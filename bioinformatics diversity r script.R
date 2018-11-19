plot(eval@predictions[[best]])
points(as.data.frame(loc), pch=20, cex =0.1)
best=2
est.loc = extract(eval@predictions[[2]], as.data.frame(loc))
est.bg = extract(eval@predictions[[2]], eval@bg.pts)
ev = evaluate(est.loc, est.bg)
thr = threshold(ev)
plot(eval@predictions[[best]] > thr$equal_sens_spec, col = c('lightgrey', 'purple'))
