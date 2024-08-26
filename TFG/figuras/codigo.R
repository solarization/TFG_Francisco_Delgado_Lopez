setwd('TFG/figuras')
library(solaR2)
trellis.device(pdf, file = "codigo-sol.pdf", width = 8, height = 6)
lat <- 37.2
BTd <- fBTd(mode = 'serie')
sol <- calcSol(lat, BTd[100])
xyplot(as.data.tableI(sol), )
dev.off()

trellis.device(pdf, file = "codigo-meteo.pdf", width = 8, height = 6)
G0dm = c(2.766,3.491,4.494,5.912,6.989,7.742,
         7.919,7.027,5.369,3.562,2.814,2.179) * 1000;
Ta = c(10, 14.1, 15.6, 17.2, 19.3, 21.2,
       28.4, 29.9, 24.3, 18.2, 17.2, 15.2)
BD <- readG0dm(G0dm = G0dm, Ta = Ta, lat = 37.2)
xyplot(BD)
dev.off()

trellis.device(pdf, file = "codigo-g0.pdf", width = 8, height = 6)
g0 <- calcG0(lat, dataRad = list(G0dm = G0dm, Ta = Ta))
xyplot(g0)
dev.off()

trellis.device(pdf, file = "codigo-gef.pdf", width = 8, height = 6)
gef <- calcGef(lat, dataRad = list(G0dm = G0dm, Ta = Ta))
xyplot(gef)
dev.off()

trellis.device(pdf, file = "codigo-prodgcpv.pdf", width = 12, height = 9)
struct2x <- list(W = 23.11, L = 9.8, Nrow = 2, Ncol = 3)
dist2x <- data.table(Lew = 30, Lns = 20, H = 0)
prod2x <- prodGCPV(lat, dataRad = list(G0dm = G0dm, Ta = Ta),
                   modeTrk = 'two', modeShd = c('area', 'prom'),
                   struct = struct2x, distances = dist2x)
xyplot(prod2x)
dev.off()

trellis.device(pdf, file = "codigo-prodpvps.pdf", width = 8, height = 6)

dec.off()
