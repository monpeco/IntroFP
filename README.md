# IntroFP
Introduction to Functional Programming
----------
Santiago, 10 January 2016
----------

Examples from the course "Introduction to Functional Programming" by DelftX

Programming languages: Haskell, Ruby, Groovy

----
Retake on Haskell
----------
Santiago, 16 April 2017
----------

Examples from https://www.youtube.com/watch?v=02_H3LjqMr8

Programming languages: Haskell.

# Downloads for Linux
### Package-based install
### Ubuntu

### Steps to setup ghc and cabal:

```
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install-1.22 ghc-7.10.3
cat >> ~/.bashrc <<EOF
export PATH="\$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:\$PATH"
EOF
export PATH=~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH
```
