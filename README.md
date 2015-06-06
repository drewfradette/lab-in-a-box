# Lab-in-a-Box

**Lab-in-a-box** is a complete ipython notebook environment wrapped up in a docker image. 

## Packages

As a base, **Lab-in-a-box** provides the defacto standard packages:

  - iPython/Jupyter
  - Pandas
  - matplotlib
  - numpy
  - sympy
  - scipy
  - Latex support

This image also provides some extras and nice-to-haves:

  - Bokeh
  - geopandas
  - mpld3
  - NLTK
  - prettyplotlib
  - requests
  - scikit-learn
  - seaborn

## Extensions

Extension wise, the image is slim but the following extensions are loaded by default:

  - `hide_input`
  - `execute_time`
  - `python-markdown`
  - `toc`

## Examples

Some cool notebooks are located in `notebooks/`.

## Testing Functionality

`Lab Tests.ipynb` can be used to test various functionality provided by packages.

## Usage

If you don't want to build it, you can run get to business with this:

```
echo "http://localhost:$(docker run -dPt -v ~/notebooks:/notebooks drewfradette/lab-in-a-box | xargs docker inspect | grep "HostPort" | head -1 | tr -d \" | awk '{print $2}')"
```

Then, simply open your browser up to the port shown after docker run.
