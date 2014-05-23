# Neve [![Build Status](https://travis-ci.org/seenmyfate/neve.png)](http://travis-ci.org/seenmyfate/neve) [![Code Climate](https://codeclimate.com/github/seenmyfate/neve.png)](https://codeclimate.com/github/seenmyfate/neve)

Friendly audio mixing, on your command line.

## Installation

Neve depends on [ecasound](http://ecasound.seul.org/ecasound/download.php). On
a Mac, install via [Homebrew](http://brew.sh/):

    $ brew install ecasound
    $ gem install neve

## Usage

Neve expects your files to be organised like this, where `my_awesome_tune` is an
example song name:

    ├── my_awesome_tune
    │   ├── bass.wav
    │   ├── drums.wav
    │   └── guitar.wav
    └── my_awesome_tune.yml

All mix settings are contained in `my_awesome_tune.yml`.  For each track,
the `fader` and `pan` percentages can be set.  Names are expected to match a
`wav` file within the folder of the same name.

    bass:
      fader: 33
      pan: 25
    drums:
      fader: 33
      pan: 50
    guitar:
      fader: 33
      pan: 75

`fader` is an optional value that represents a percentage of the track
level. Values below `100` will attenuate the track while values above `100` will
cause the track to be amplified. If no value is set, it will default to `100`.

__Please note that there is no limiting - please use caution when setting fader values,
especially with many tracks__

`pan` is an optional value that represents the left/right balance of the track.
`0` is fully left, `100` is fully right. If no value if set, it will default to `50`.

With the configuration and tracks in place, we can bounce the mix to file:

    $ neve mix my_awesome_tune

The mixed file name will (eventually) include a timestamp to avoid replacing any existing mixes,
so for example `my_awesome_tune_20140502132657.wav` - for now though, it will just over-write `my_awesome_tune.wav`.

## Contributing

1. Fork it ( http://github.com/seenmyfate/neve/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
