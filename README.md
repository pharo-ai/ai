# MLPharo

A meta package to load all related Machine Learning libraries in Pharo

# Installation

You can load MLPharo into a fresh Pharo image going to the Playground (Ctrl + OW/Cmd + OW) and execute the following script (select it and press Do-it button or Ctrl+D/Cmd+D):

```smalltalk
[
    EpMonitor current disable.
    Metacello new
        baseline: 'MLPharo';
        repository: 'github://pharo-ai/MLPharo:main/src';
		onWarningLog;
        load
] ensure: [ EpMonitor current enable ]
```

This should load the default version of the MLPharo (you can also specify another version or branch).

To add it to your Baseline:

```smalltalk
    spec
	    baseline: 'MLPharo'
	    with: [ spec repository: 'github://pharo-ai/MLPharo/src' ]
```

If you are new to baselines and Metacello, check out the [Baselines](https://github.com/pharo-open-documentation/pharo-wiki/blob/master/General/Baselines.md) tutorial on Pharo Wiki.
