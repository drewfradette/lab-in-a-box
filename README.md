# Lab-in-a-Box

This is a simple docker image that includes all the scipy goodies.

## Building

```

```

## Usage

If you don't want to build it, you can run get to business with this:

```
echo "http://localhost:$(docker run -dPt -v ~/notebooks:/notebooks drewfradette/lab-in-a-box | xargs docker inspect | grep "HostPort" | head -1 | tr -d \" | awk '{print $2}')"
```

Then, simply open your browser up to the port shown after docker run.
