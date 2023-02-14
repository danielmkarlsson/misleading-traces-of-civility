~clean.lsf("~/snd/pod")
(
Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(2369,
            Pbind(*[
                type: Pseq([\cln, Pwrand2([\cln, \], [1, 1.1], inf)], inf),
                snd: \pod,
                dup: Plprand(1, 3), 
                bgn: Plprand(0.0, 0.125),
                num: Pdup(Pkey(\dup), Pxshuf((0 .. 66), inf)),
                spd: Pdup(Pkey(\dup), Plprand(0.25, 2.0)),
                atk: Phprand(7.5, 10.0) / Pkey(\spd),
                hld: Phprand(7.5, 10.0) / Pkey(\spd),
                rel: Phprand(7.5, 10.0) / Pkey(\spd),
                amp: Plprand(0.25, 2.25).trace,
                lpf: Plprand(2000, 20000),
                crv: 8.0,
                dur: (Pkey(\atk) + Pkey(\hld) + Pkey(\rel)) * Pwhite(1/8, 1/4),
                pan: Pmeanrand(0.0, 1.0),
                legato: 77,
                shp: 1,
                sha: 0,
                sho: Pmeanrand(0.0, 1.0),
                shi: Pmeanrand(0.0, 1.0),
                slo: Pmeanrand(0.0, 1.0),
                hit: Pmeanrand(0.0, 1.0),
                lot: Pmeanrand(0.0, 1.0),
                tnh: 1,
                tng: 8,
                cav: 1/13,
            ])
        )
    ).play;
    1140.wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording;
}.play
)
