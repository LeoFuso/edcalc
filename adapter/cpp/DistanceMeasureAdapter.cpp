#include "DistanceMeasureFactory.hpp"
#include <Python.h>

double
euclidean(const double *x, const double *y, unsigned long n)
{
	auto *factory = new DistanceMeasureFactory();
	auto *d_measure = factory->produce();
	return d_measure->euclidean(x, y, n);
}

PyObject *
euclidean(PyObject *self, PyObject *args)
{
	PyObject *x_sequence;
	PyObject *y_sequence;

	double *x;
	double *y;

	double result;

	Py_ssize_t x_sequence_length;
	Py_ssize_t y_sequence_length;
	PyArg_ParseTuple(args, "OO", &x_sequence, &y_sequence);

	x_sequence = PySequence_Fast(x_sequence, "First argument must be sequence or iterable");
	y_sequence = PySequence_Fast(y_sequence, "Second argument must be sequence or iterable");

	x_sequence_length = PySequence_Fast_GET_SIZE(x_sequence);
	y_sequence_length = PySequence_Fast_GET_SIZE(y_sequence);

	x = (double *) calloc(x_sequence_length, sizeof(double));
	y = (double *) calloc(y_sequence_length, sizeof(double));

	unsigned int i;
	for (i = 0; i < x_sequence_length; i++)
	{
		PyObject *x_f_item;
		PyObject *y_f_item;

		PyObject *x_item = PySequence_Fast_GET_ITEM(x_sequence, i);
		PyObject *y_item = PySequence_Fast_GET_ITEM(y_sequence, i);

		x_f_item = PyNumber_Float(x_item);
		y_f_item = PyNumber_Float(y_item);

		x[i] = PyFloat_AS_DOUBLE(x_f_item);
		y[i] = PyFloat_AS_DOUBLE(y_f_item);
		Py_DECREF(x_f_item);
		Py_DECREF(y_f_item);
	}

	Py_DECREF(x_sequence);
	Py_DECREF(y_sequence);

	result = euclidean(x, y, x_sequence_length);

	free(x);
	free(y);

	return PyFloat_FromDouble(result);
}

static PyMethodDef DistanceMeasure_methods[] = {
	{"euclidean", (PyCFunction) euclidean, METH_VARARGS, nullptr},
	{nullptr, nullptr, 0, nullptr}
};

static PyModuleDef DistanceMeasure_module = {
	PyModuleDef_HEAD_INIT,
	"DistanceMeasure",
	"Provides some functions, but faster",
	0,
	DistanceMeasure_methods
};

PyMODINIT_FUNC
PyInit_DistanceMeasure()
{
	return PyModule_Create(&DistanceMeasure_module);
}
