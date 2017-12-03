#!/bin/bash
i=1; for x in *; do   mv "$x" $i.flv;   let i=i+1; done
