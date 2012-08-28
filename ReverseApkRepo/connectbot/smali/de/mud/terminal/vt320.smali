.class public abstract Lde/mud/terminal/vt320;
.super Lde/mud/terminal/VDUBuffer;
.source "vt320.java"


# static fields
.field private static DECSPECIAL:[C

.field private static final unimap:[C


# instance fields
.field private BackSpace:[Ljava/lang/String;

.field C:I

.field private DCEvar:I

.field private DCEvars:[I

.field private Do:Ljava/lang/String;

.field private Escape:[Ljava/lang/String;

.field private Find:Ljava/lang/String;

.field private FunctionKey:[Ljava/lang/String;

.field private FunctionKeyAlt:[Ljava/lang/String;

.field private FunctionKeyCtrl:[Ljava/lang/String;

.field private FunctionKeyShift:[Ljava/lang/String;

.field private Help:Ljava/lang/String;

.field private Insert:[Ljava/lang/String;

.field private KPComma:Ljava/lang/String;

.field private KPEnter:Ljava/lang/String;

.field private KPMinus:Ljava/lang/String;

.field private KPPeriod:Ljava/lang/String;

.field private KeyDown:[Ljava/lang/String;

.field private KeyEnd:[Ljava/lang/String;

.field private KeyHome:[Ljava/lang/String;

.field private KeyLeft:[Ljava/lang/String;

.field private KeyRight:[Ljava/lang/String;

.field private KeyUp:[Ljava/lang/String;

.field private NUMDot:[Ljava/lang/String;

.field private NUMPlus:[Ljava/lang/String;

.field private NextScn:[Ljava/lang/String;

.field private Numpad:[Ljava/lang/String;

.field private PF1:Ljava/lang/String;

.field private PF2:Ljava/lang/String;

.field private PF3:Ljava/lang/String;

.field private PF4:Ljava/lang/String;

.field private PrevScn:[Ljava/lang/String;

.field R:I

.field private Remove:[Ljava/lang/String;

.field Sa:I

.field Sc:I

.field private Select:Ljava/lang/String;

.field Sgl:C

.field Sgr:C

.field Sgx:[C

.field Sr:I

.field private TabKey:[Ljava/lang/String;

.field private Tabs:[B

.field private answerBack:Ljava/lang/String;

.field attributes:I

.field capslock:Z

.field private dcs:Ljava/lang/String;

.field private debugStr:Ljava/lang/StringBuilder;

.field gl:C

.field gr:C

.field gx:[C

.field insertmode:I

.field keypadmode:Z

.field lastwaslf:I

.field private localecho:Z

.field mousebut:B

.field mouserpt:I

.field moveoutsidemargins:Z

.field normalcursor:I

.field numlock:Z

.field onegl:I

.field private osc:Ljava/lang/String;

.field output8bit:Z

.field sendcrlf:Z

.field statusmode:I

.field private term_state:I

.field private terminalID:Ljava/lang/String;

.field usedcharsets:Z

.field useibmcharset:Z

.field private vms:Z

.field vt52mode:Z

.field wraparound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v3, 0x20

    .line 715
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lde/mud/terminal/vt320;->DECSPECIAL:[C

    .line 1229
    const/16 v0, 0x100

    new-array v0, v0, [C

    .line 1249
    aput-char v1, v0, v1

    .line 1250
    aput-char v2, v0, v2

    .line 1251
    aput-char v4, v0, v4

    .line 1252
    aput-char v5, v0, v5

    const/4 v1, 0x5

    .line 1253
    const/4 v2, 0x5

    aput-char v2, v0, v1

    const/4 v1, 0x6

    .line 1254
    const/4 v2, 0x6

    aput-char v2, v0, v1

    const/4 v1, 0x7

    .line 1255
    const/4 v2, 0x7

    aput-char v2, v0, v1

    const/16 v1, 0x8

    .line 1256
    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    .line 1257
    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xa

    .line 1258
    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0xb

    .line 1259
    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0xc

    .line 1260
    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0xd

    .line 1261
    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0xe

    .line 1262
    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0xf

    .line 1263
    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/16 v1, 0x10

    .line 1264
    const/16 v2, 0x10

    aput-char v2, v0, v1

    const/16 v1, 0x11

    .line 1265
    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x12

    .line 1266
    const/16 v2, 0x12

    aput-char v2, v0, v1

    const/16 v1, 0x13

    .line 1267
    const/16 v2, 0x13

    aput-char v2, v0, v1

    const/16 v1, 0x14

    .line 1268
    const/16 v2, 0x14

    aput-char v2, v0, v1

    const/16 v1, 0x15

    .line 1269
    const/16 v2, 0x15

    aput-char v2, v0, v1

    const/16 v1, 0x16

    .line 1270
    const/16 v2, 0x16

    aput-char v2, v0, v1

    const/16 v1, 0x17

    .line 1271
    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/16 v1, 0x18

    .line 1272
    const/16 v2, 0x18

    aput-char v2, v0, v1

    const/16 v1, 0x19

    .line 1273
    const/16 v2, 0x19

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    .line 1274
    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    .line 1275
    const/16 v2, 0x1b

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    .line 1276
    const/16 v2, 0x1c

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    .line 1277
    const/16 v2, 0x1d

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    .line 1278
    const/16 v2, 0x1e

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    .line 1279
    const/16 v2, 0x1f

    aput-char v2, v0, v1

    .line 1280
    aput-char v3, v0, v3

    const/16 v1, 0x21

    .line 1281
    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/16 v1, 0x22

    .line 1282
    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x23

    .line 1283
    const/16 v2, 0x23

    aput-char v2, v0, v1

    const/16 v1, 0x24

    .line 1284
    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x25

    .line 1285
    const/16 v2, 0x25

    aput-char v2, v0, v1

    const/16 v1, 0x26

    .line 1286
    const/16 v2, 0x26

    aput-char v2, v0, v1

    const/16 v1, 0x27

    .line 1287
    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x28

    .line 1288
    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/16 v1, 0x29

    .line 1289
    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    .line 1290
    const/16 v2, 0x2a

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    .line 1291
    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    .line 1292
    const/16 v2, 0x2c

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    .line 1293
    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    .line 1294
    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    .line 1295
    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x30

    .line 1296
    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    .line 1297
    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x32

    .line 1298
    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x33

    .line 1299
    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x34

    .line 1300
    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x35

    .line 1301
    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0x36

    .line 1302
    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x37

    .line 1303
    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x38

    .line 1304
    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x39

    .line 1305
    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    .line 1306
    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    .line 1307
    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    .line 1308
    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    .line 1309
    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    .line 1310
    const/16 v2, 0x3e

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    .line 1311
    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x40

    .line 1312
    const/16 v2, 0x40

    aput-char v2, v0, v1

    const/16 v1, 0x41

    .line 1313
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x42

    .line 1314
    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0x43

    .line 1315
    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x44

    .line 1316
    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x45

    .line 1317
    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x46

    .line 1318
    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x47

    .line 1319
    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x48

    .line 1320
    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x49

    .line 1321
    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    .line 1322
    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    .line 1323
    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    .line 1324
    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x4d

    .line 1325
    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    .line 1326
    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x4f

    .line 1327
    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x50

    .line 1328
    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x51

    .line 1329
    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x52

    .line 1330
    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x53

    .line 1331
    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x54

    .line 1332
    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x55

    .line 1333
    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x56

    .line 1334
    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x57

    .line 1335
    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x58

    .line 1336
    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x59

    .line 1337
    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    .line 1338
    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    .line 1339
    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x5c

    .line 1340
    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x5d

    .line 1341
    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/16 v1, 0x5e

    .line 1342
    const/16 v2, 0x5e

    aput-char v2, v0, v1

    const/16 v1, 0x5f

    .line 1343
    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x60

    .line 1344
    const/16 v2, 0x60

    aput-char v2, v0, v1

    const/16 v1, 0x61

    .line 1345
    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x62

    .line 1346
    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x63

    .line 1347
    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x64

    .line 1348
    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x65

    .line 1349
    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x66

    .line 1350
    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x67

    .line 1351
    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x68

    .line 1352
    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x69

    .line 1353
    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x6a

    .line 1354
    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x6b

    .line 1355
    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x6c

    .line 1356
    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x6d

    .line 1357
    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x6e

    .line 1358
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x6f

    .line 1359
    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x70

    .line 1360
    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x71

    .line 1361
    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x72

    .line 1362
    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x73

    .line 1363
    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x74

    .line 1364
    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x75

    .line 1365
    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x76

    .line 1366
    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x77

    .line 1367
    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x78

    .line 1368
    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x79

    .line 1369
    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x7a

    .line 1370
    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    .line 1371
    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x7c

    .line 1372
    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/16 v1, 0x7d

    .line 1373
    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x7e

    .line 1374
    const/16 v2, 0x7e

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    .line 1375
    const/16 v2, 0x7f

    aput-char v2, v0, v1

    const/16 v1, 0x80

    .line 1376
    const/16 v2, 0xc7

    aput-char v2, v0, v1

    const/16 v1, 0x81

    .line 1377
    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x82

    .line 1378
    const/16 v2, 0xe9

    aput-char v2, v0, v1

    const/16 v1, 0x83

    .line 1379
    const/16 v2, 0xe2

    aput-char v2, v0, v1

    const/16 v1, 0x84

    .line 1380
    const/16 v2, 0xe4

    aput-char v2, v0, v1

    const/16 v1, 0x85

    .line 1381
    const/16 v2, 0xe0

    aput-char v2, v0, v1

    const/16 v1, 0x86

    .line 1382
    const/16 v2, 0xe5

    aput-char v2, v0, v1

    const/16 v1, 0x87

    .line 1383
    const/16 v2, 0xe7

    aput-char v2, v0, v1

    const/16 v1, 0x88

    .line 1384
    const/16 v2, 0xea

    aput-char v2, v0, v1

    const/16 v1, 0x89

    .line 1385
    const/16 v2, 0xeb

    aput-char v2, v0, v1

    const/16 v1, 0x8a

    .line 1386
    const/16 v2, 0xe8

    aput-char v2, v0, v1

    const/16 v1, 0x8b

    .line 1387
    const/16 v2, 0xef

    aput-char v2, v0, v1

    const/16 v1, 0x8c

    .line 1388
    const/16 v2, 0xee

    aput-char v2, v0, v1

    const/16 v1, 0x8d

    .line 1389
    const/16 v2, 0xec

    aput-char v2, v0, v1

    const/16 v1, 0x8e

    .line 1390
    const/16 v2, 0xc4

    aput-char v2, v0, v1

    const/16 v1, 0x8f

    .line 1391
    const/16 v2, 0xc5

    aput-char v2, v0, v1

    const/16 v1, 0x90

    .line 1392
    const/16 v2, 0xc9

    aput-char v2, v0, v1

    const/16 v1, 0x91

    .line 1393
    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x92

    .line 1394
    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0x93

    .line 1395
    const/16 v2, 0xf4

    aput-char v2, v0, v1

    const/16 v1, 0x94

    .line 1396
    const/16 v2, 0xf6

    aput-char v2, v0, v1

    const/16 v1, 0x95

    .line 1397
    const/16 v2, 0xf2

    aput-char v2, v0, v1

    const/16 v1, 0x96

    .line 1398
    const/16 v2, 0xfb

    aput-char v2, v0, v1

    const/16 v1, 0x97

    .line 1399
    const/16 v2, 0xf9

    aput-char v2, v0, v1

    const/16 v1, 0x98

    .line 1400
    const/16 v2, 0xff

    aput-char v2, v0, v1

    const/16 v1, 0x99

    .line 1401
    const/16 v2, 0xd6

    aput-char v2, v0, v1

    const/16 v1, 0x9a

    .line 1402
    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x9b

    .line 1403
    const/16 v2, 0xa2

    aput-char v2, v0, v1

    const/16 v1, 0x9c

    .line 1404
    const/16 v2, 0xa3

    aput-char v2, v0, v1

    const/16 v1, 0x9d

    .line 1405
    const/16 v2, 0xa5

    aput-char v2, v0, v1

    const/16 v1, 0x9e

    .line 1406
    const/16 v2, 0x20a7

    aput-char v2, v0, v1

    const/16 v1, 0x9f

    .line 1407
    const/16 v2, 0x192

    aput-char v2, v0, v1

    const/16 v1, 0xa0

    .line 1408
    const/16 v2, 0xe1

    aput-char v2, v0, v1

    const/16 v1, 0xa1

    .line 1409
    const/16 v2, 0xed

    aput-char v2, v0, v1

    const/16 v1, 0xa2

    .line 1410
    const/16 v2, 0xf3

    aput-char v2, v0, v1

    const/16 v1, 0xa3

    .line 1411
    const/16 v2, 0xfa

    aput-char v2, v0, v1

    const/16 v1, 0xa4

    .line 1412
    const/16 v2, 0xf1

    aput-char v2, v0, v1

    const/16 v1, 0xa5

    .line 1413
    const/16 v2, 0xd1

    aput-char v2, v0, v1

    const/16 v1, 0xa6

    .line 1414
    const/16 v2, 0xaa

    aput-char v2, v0, v1

    const/16 v1, 0xa7

    .line 1415
    const/16 v2, 0xba

    aput-char v2, v0, v1

    const/16 v1, 0xa8

    .line 1416
    const/16 v2, 0xbf

    aput-char v2, v0, v1

    const/16 v1, 0xa9

    .line 1417
    const/16 v2, 0x2310

    aput-char v2, v0, v1

    const/16 v1, 0xaa

    .line 1418
    const/16 v2, 0xac

    aput-char v2, v0, v1

    const/16 v1, 0xab

    .line 1419
    const/16 v2, 0xbd

    aput-char v2, v0, v1

    const/16 v1, 0xac

    .line 1420
    const/16 v2, 0xbc

    aput-char v2, v0, v1

    const/16 v1, 0xad

    .line 1421
    const/16 v2, 0xa1

    aput-char v2, v0, v1

    const/16 v1, 0xae

    .line 1422
    const/16 v2, 0xab

    aput-char v2, v0, v1

    const/16 v1, 0xaf

    .line 1423
    const/16 v2, 0xbb

    aput-char v2, v0, v1

    const/16 v1, 0xb0

    .line 1424
    const/16 v2, 0x2591

    aput-char v2, v0, v1

    const/16 v1, 0xb1

    .line 1425
    const/16 v2, 0x2592

    aput-char v2, v0, v1

    const/16 v1, 0xb2

    .line 1426
    const/16 v2, 0x2593

    aput-char v2, v0, v1

    const/16 v1, 0xb3

    .line 1427
    const/16 v2, 0x2502

    aput-char v2, v0, v1

    const/16 v1, 0xb4

    .line 1428
    const/16 v2, 0x2524

    aput-char v2, v0, v1

    const/16 v1, 0xb5

    .line 1429
    const/16 v2, 0x2561

    aput-char v2, v0, v1

    const/16 v1, 0xb6

    .line 1430
    const/16 v2, 0x2562

    aput-char v2, v0, v1

    const/16 v1, 0xb7

    .line 1431
    const/16 v2, 0x2556

    aput-char v2, v0, v1

    const/16 v1, 0xb8

    .line 1432
    const/16 v2, 0x2555

    aput-char v2, v0, v1

    const/16 v1, 0xb9

    .line 1433
    const/16 v2, 0x2563

    aput-char v2, v0, v1

    const/16 v1, 0xba

    .line 1434
    const/16 v2, 0x2551

    aput-char v2, v0, v1

    const/16 v1, 0xbb

    .line 1435
    const/16 v2, 0x2557

    aput-char v2, v0, v1

    const/16 v1, 0xbc

    .line 1436
    const/16 v2, 0x255d

    aput-char v2, v0, v1

    const/16 v1, 0xbd

    .line 1437
    const/16 v2, 0x255c

    aput-char v2, v0, v1

    const/16 v1, 0xbe

    .line 1438
    const/16 v2, 0x255b

    aput-char v2, v0, v1

    const/16 v1, 0xbf

    .line 1439
    const/16 v2, 0x2510

    aput-char v2, v0, v1

    const/16 v1, 0xc0

    .line 1440
    const/16 v2, 0x2514

    aput-char v2, v0, v1

    const/16 v1, 0xc1

    .line 1441
    const/16 v2, 0x2534

    aput-char v2, v0, v1

    const/16 v1, 0xc2

    .line 1442
    const/16 v2, 0x252c

    aput-char v2, v0, v1

    const/16 v1, 0xc3

    .line 1443
    const/16 v2, 0x251c

    aput-char v2, v0, v1

    const/16 v1, 0xc4

    .line 1444
    const/16 v2, 0x2500

    aput-char v2, v0, v1

    const/16 v1, 0xc5

    .line 1445
    const/16 v2, 0x253c

    aput-char v2, v0, v1

    const/16 v1, 0xc6

    .line 1446
    const/16 v2, 0x255e

    aput-char v2, v0, v1

    const/16 v1, 0xc7

    .line 1447
    const/16 v2, 0x255f

    aput-char v2, v0, v1

    const/16 v1, 0xc8

    .line 1448
    const/16 v2, 0x255a

    aput-char v2, v0, v1

    const/16 v1, 0xc9

    .line 1449
    const/16 v2, 0x2554

    aput-char v2, v0, v1

    const/16 v1, 0xca

    .line 1450
    const/16 v2, 0x2569

    aput-char v2, v0, v1

    const/16 v1, 0xcb

    .line 1451
    const/16 v2, 0x2566

    aput-char v2, v0, v1

    const/16 v1, 0xcc

    .line 1452
    const/16 v2, 0x2560

    aput-char v2, v0, v1

    const/16 v1, 0xcd

    .line 1453
    const/16 v2, 0x2550

    aput-char v2, v0, v1

    const/16 v1, 0xce

    .line 1454
    const/16 v2, 0x256c

    aput-char v2, v0, v1

    const/16 v1, 0xcf

    .line 1455
    const/16 v2, 0x2567

    aput-char v2, v0, v1

    const/16 v1, 0xd0

    .line 1456
    const/16 v2, 0x2568

    aput-char v2, v0, v1

    const/16 v1, 0xd1

    .line 1457
    const/16 v2, 0x2564

    aput-char v2, v0, v1

    const/16 v1, 0xd2

    .line 1458
    const/16 v2, 0x2565

    aput-char v2, v0, v1

    const/16 v1, 0xd3

    .line 1459
    const/16 v2, 0x2559

    aput-char v2, v0, v1

    const/16 v1, 0xd4

    .line 1460
    const/16 v2, 0x2558

    aput-char v2, v0, v1

    const/16 v1, 0xd5

    .line 1461
    const/16 v2, 0x2552

    aput-char v2, v0, v1

    const/16 v1, 0xd6

    .line 1462
    const/16 v2, 0x2553

    aput-char v2, v0, v1

    const/16 v1, 0xd7

    .line 1463
    const/16 v2, 0x256b

    aput-char v2, v0, v1

    const/16 v1, 0xd8

    .line 1464
    const/16 v2, 0x256a

    aput-char v2, v0, v1

    const/16 v1, 0xd9

    .line 1465
    const/16 v2, 0x2518

    aput-char v2, v0, v1

    const/16 v1, 0xda

    .line 1466
    const/16 v2, 0x250c

    aput-char v2, v0, v1

    const/16 v1, 0xdb

    .line 1467
    const/16 v2, 0x2588

    aput-char v2, v0, v1

    const/16 v1, 0xdc

    .line 1468
    const/16 v2, 0x2584

    aput-char v2, v0, v1

    const/16 v1, 0xdd

    .line 1469
    const/16 v2, 0x258c

    aput-char v2, v0, v1

    const/16 v1, 0xde

    .line 1470
    const/16 v2, 0x2590

    aput-char v2, v0, v1

    const/16 v1, 0xdf

    .line 1471
    const/16 v2, 0x2580

    aput-char v2, v0, v1

    const/16 v1, 0xe0

    .line 1472
    const/16 v2, 0x3b1

    aput-char v2, v0, v1

    const/16 v1, 0xe1

    .line 1473
    const/16 v2, 0xdf

    aput-char v2, v0, v1

    const/16 v1, 0xe2

    .line 1474
    const/16 v2, 0x393

    aput-char v2, v0, v1

    const/16 v1, 0xe3

    .line 1475
    const/16 v2, 0x3c0

    aput-char v2, v0, v1

    const/16 v1, 0xe4

    .line 1476
    const/16 v2, 0x3a3

    aput-char v2, v0, v1

    const/16 v1, 0xe5

    .line 1477
    const/16 v2, 0x3c3

    aput-char v2, v0, v1

    const/16 v1, 0xe6

    .line 1478
    const/16 v2, 0xb5

    aput-char v2, v0, v1

    const/16 v1, 0xe7

    .line 1479
    const/16 v2, 0x3c4

    aput-char v2, v0, v1

    const/16 v1, 0xe8

    .line 1480
    const/16 v2, 0x3a6

    aput-char v2, v0, v1

    const/16 v1, 0xe9

    .line 1481
    const/16 v2, 0x398

    aput-char v2, v0, v1

    const/16 v1, 0xea

    .line 1482
    const/16 v2, 0x3a9

    aput-char v2, v0, v1

    const/16 v1, 0xeb

    .line 1483
    const/16 v2, 0x3b4

    aput-char v2, v0, v1

    const/16 v1, 0xec

    .line 1484
    const/16 v2, 0x221e

    aput-char v2, v0, v1

    const/16 v1, 0xed

    .line 1485
    const/16 v2, 0x3c6

    aput-char v2, v0, v1

    const/16 v1, 0xee

    .line 1486
    const/16 v2, 0x3b5

    aput-char v2, v0, v1

    const/16 v1, 0xef

    .line 1487
    const/16 v2, 0x2229

    aput-char v2, v0, v1

    const/16 v1, 0xf0

    .line 1488
    const/16 v2, 0x2261

    aput-char v2, v0, v1

    const/16 v1, 0xf1

    .line 1489
    const/16 v2, 0xb1

    aput-char v2, v0, v1

    const/16 v1, 0xf2

    .line 1490
    const/16 v2, 0x2265

    aput-char v2, v0, v1

    const/16 v1, 0xf3

    .line 1491
    const/16 v2, 0x2264

    aput-char v2, v0, v1

    const/16 v1, 0xf4

    .line 1492
    const/16 v2, 0x2320

    aput-char v2, v0, v1

    const/16 v1, 0xf5

    .line 1493
    const/16 v2, 0x2321

    aput-char v2, v0, v1

    const/16 v1, 0xf6

    .line 1494
    const/16 v2, 0xf7

    aput-char v2, v0, v1

    const/16 v1, 0xf7

    .line 1495
    const/16 v2, 0x2248

    aput-char v2, v0, v1

    const/16 v1, 0xf8

    .line 1496
    const/16 v2, 0xb0

    aput-char v2, v0, v1

    const/16 v1, 0xf9

    .line 1497
    const/16 v2, 0x2219

    aput-char v2, v0, v1

    const/16 v1, 0xfa

    .line 1498
    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0xfb

    .line 1499
    const/16 v2, 0x221a

    aput-char v2, v0, v1

    const/16 v1, 0xfc

    .line 1500
    const/16 v2, 0x207f

    aput-char v2, v0, v1

    const/16 v1, 0xfd

    .line 1501
    const/16 v2, 0xb2

    aput-char v2, v0, v1

    const/16 v1, 0xfe

    .line 1502
    const/16 v2, 0x25a0

    aput-char v2, v0, v1

    const/16 v1, 0xff

    .line 1503
    const/16 v2, 0xa0

    aput-char v2, v0, v1

    .line 1229
    sput-object v0, Lde/mud/terminal/vt320;->unimap:[C

    .line 40
    return-void

    .line 715
    :array_0
    .array-data 0x2
        0x40t 0x0t
        0x66t 0x26t
        0x92t 0x25t
        0x9t 0x24t
        0xct 0x24t
        0xdt 0x24t
        0xat 0x24t
        0xbat 0x0t
        0xb1t 0x0t
        0x24t 0x24t
        0xbt 0x24t
        0x18t 0x25t
        0x10t 0x25t
        0xct 0x25t
        0x14t 0x25t
        0x3ct 0x25t
        0x94t 0x25t
        0x80t 0x25t
        0x0t 0x25t
        0xact 0x25t
        0x5ft 0x0t
        0x1ct 0x25t
        0x24t 0x25t
        0x34t 0x25t
        0x2ct 0x25t
        0x2t 0x25t
        0x64t 0x22t
        0x65t 0x22t
        0xb6t 0x0t
        0x60t 0x22t
        0xa3t 0x0t
        0xb7t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 336
    const/16 v0, 0x50

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lde/mud/terminal/vt320;-><init>(II)V

    .line 337
    return-void
.end method

.method public constructor <init>(II)V
    .locals 11
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 193
    invoke-direct {p0, p1, p2}, Lde/mud/terminal/VDUBuffer;-><init>(II)V

    .line 412
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->localecho:Z

    .line 590
    const-string v1, "vt320"

    iput-object v1, p0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    .line 591
    const-string v1, "Use Terminal.answerback to set ...\n"

    iput-object v1, p0, Lde/mud/terminal/vt320;->answerBack:Ljava/lang/String;

    .line 595
    iput v6, p0, Lde/mud/terminal/vt320;->attributes:I

    .line 601
    iput v6, p0, Lde/mud/terminal/vt320;->insertmode:I

    .line 602
    iput v6, p0, Lde/mud/terminal/vt320;->statusmode:I

    .line 603
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->vt52mode:Z

    .line 604
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->keypadmode:Z

    .line 605
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->output8bit:Z

    .line 606
    iput v6, p0, Lde/mud/terminal/vt320;->normalcursor:I

    .line 607
    iput-boolean v8, p0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    .line 608
    iput-boolean v8, p0, Lde/mud/terminal/vt320;->wraparound:Z

    .line 609
    iput-boolean v8, p0, Lde/mud/terminal/vt320;->sendcrlf:Z

    .line 610
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->capslock:Z

    .line 611
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->numlock:Z

    .line 612
    iput v6, p0, Lde/mud/terminal/vt320;->mouserpt:I

    .line 613
    iput-byte v6, p0, Lde/mud/terminal/vt320;->mousebut:B

    .line 615
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->useibmcharset:Z

    .line 617
    iput v6, p0, Lde/mud/terminal/vt320;->lastwaslf:I

    .line 618
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->usedcharsets:Z

    .line 768
    iput v6, p0, Lde/mud/terminal/vt320;->term_state:I

    .line 770
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->vms:Z

    .line 774
    const/16 v1, 0x1e

    new-array v1, v1, [I

    iput-object v1, p0, Lde/mud/terminal/vt320;->DCEvars:[I

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0, v6}, Lde/mud/terminal/vt320;->setVMS(Z)V

    .line 198
    invoke-virtual {p0, v6}, Lde/mud/terminal/vt320;->setIBMCharset(Z)V

    .line 199
    const-string v1, "vt320"

    invoke-virtual {p0, v1}, Lde/mud/terminal/vt320;->setTerminalID(Ljava/lang/String;)V

    .line 200
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lde/mud/terminal/vt320;->setBufferSize(I)V

    .line 203
    new-array v1, v7, [C

    iput-object v1, p0, Lde/mud/terminal/vt320;->gx:[C

    .line 204
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->reset()V

    .line 207
    const-string v1, "\u001bOP"

    iput-object v1, p0, Lde/mud/terminal/vt320;->PF1:Ljava/lang/String;

    .line 208
    const-string v1, "\u001bOQ"

    iput-object v1, p0, Lde/mud/terminal/vt320;->PF2:Ljava/lang/String;

    .line 209
    const-string v1, "\u001bOR"

    iput-object v1, p0, Lde/mud/terminal/vt320;->PF3:Ljava/lang/String;

    .line 210
    const-string v1, "\u001bOS"

    iput-object v1, p0, Lde/mud/terminal/vt320;->PF4:Ljava/lang/String;

    .line 213
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    .line 214
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    .line 215
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    .line 216
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    .line 217
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    .line 218
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    .line 219
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    .line 220
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    .line 221
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    const-string v5, "\u001b[2~"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 223
    iget-object v1, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    const-string v5, "\u001b[3~"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 224
    iget-object v1, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    const-string v5, "\u001b[5~"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 225
    iget-object v1, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    const-string v5, "\u001b[6~"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 226
    iget-object v1, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    const-string v5, "\u001b[H"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 227
    iget-object v1, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    const-string v5, "\u001b[F"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 228
    iget-object v1, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    iget-object v4, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    const-string v5, "\u001b"

    aput-object v5, v4, v10

    aput-object v5, v3, v9

    aput-object v5, v2, v8

    aput-object v5, v1, v6

    .line 229
    iget-boolean v1, p0, Lde/mud/terminal/vt320;->vms:Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v2, "\n"

    aput-object v2, v1, v8

    .line 231
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v2, "\u0018"

    aput-object v2, v1, v9

    .line 232
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v3, "\u007f"

    aput-object v3, v2, v10

    aput-object v3, v1, v6

    .line 243
    :goto_0
    const-string v1, "\u001b[1~"

    iput-object v1, p0, Lde/mud/terminal/vt320;->Find:Ljava/lang/String;

    .line 244
    const-string v1, "\u001b[4~"

    iput-object v1, p0, Lde/mud/terminal/vt320;->Select:Ljava/lang/String;

    .line 245
    const-string v1, "\u001b[28~"

    iput-object v1, p0, Lde/mud/terminal/vt320;->Help:Ljava/lang/String;

    .line 246
    const-string v1, "\u001b[29~"

    iput-object v1, p0, Lde/mud/terminal/vt320;->Do:Ljava/lang/String;

    .line 248
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v6

    .line 250
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PF1:Ljava/lang/String;

    aput-object v2, v1, v8

    .line 251
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PF2:Ljava/lang/String;

    aput-object v2, v1, v9

    .line 252
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PF3:Ljava/lang/String;

    aput-object v2, v1, v10

    .line 253
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PF4:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 255
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "\u001b[15~"

    aput-object v3, v1, v2

    .line 256
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "\u001b[17~"

    aput-object v3, v1, v2

    .line 257
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "\u001b[18~"

    aput-object v3, v1, v2

    .line 258
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "\u001b[19~"

    aput-object v3, v1, v2

    .line 259
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\u001b[20~"

    aput-object v3, v1, v2

    .line 260
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string v3, "\u001b[21~"

    aput-object v3, v1, v2

    .line 261
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0xb

    const-string v3, "\u001b[23~"

    aput-object v3, v1, v2

    .line 262
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "\u001b[24~"

    aput-object v3, v1, v2

    .line 263
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string v3, "\u001b[25~"

    aput-object v3, v1, v2

    .line 264
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0xe

    const-string v3, "\u001b[26~"

    aput-object v3, v1, v2

    .line 265
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0xf

    iget-object v3, p0, Lde/mud/terminal/vt320;->Help:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 266
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x10

    iget-object v3, p0, Lde/mud/terminal/vt320;->Do:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 267
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x11

    const-string v3, "\u001b[31~"

    aput-object v3, v1, v2

    .line 268
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x12

    const-string v3, "\u001b[32~"

    aput-object v3, v1, v2

    .line 269
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x13

    const-string v3, "\u001b[33~"

    aput-object v3, v1, v2

    .line 270
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v2, 0x14

    const-string v3, "\u001b[34~"

    aput-object v3, v1, v2

    .line 272
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    .line 273
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    .line 274
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 281
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    const/16 v2, 0xf

    iget-object v3, p0, Lde/mud/terminal/vt320;->Find:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 282
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    const/16 v2, 0x10

    iget-object v3, p0, Lde/mud/terminal/vt320;->Select:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 285
    iget-object v1, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    const-string v2, "\t"

    aput-object v2, v1, v6

    .line 286
    iget-object v1, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    const-string v2, "\u001bOP\t"

    aput-object v2, v1, v8

    .line 287
    iget-object v1, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v10

    aput-object v3, v1, v9

    .line 289
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    const-string v2, "\u001b[A"

    aput-object v2, v1, v6

    .line 291
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    const-string v2, "\u001b[B"

    aput-object v2, v1, v6

    .line 293
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    const-string v2, "\u001b[C"

    aput-object v2, v1, v6

    .line 295
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    .line 296
    iget-object v1, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    const-string v2, "\u001b[D"

    aput-object v2, v1, v6

    .line 297
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    .line 298
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v2, "\u001bOp"

    aput-object v2, v1, v6

    .line 299
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v2, "\u001bOq"

    aput-object v2, v1, v8

    .line 300
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v2, "\u001bOr"

    aput-object v2, v1, v9

    .line 301
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v2, "\u001bOs"

    aput-object v2, v1, v10

    .line 302
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const-string v2, "\u001bOt"

    aput-object v2, v1, v7

    .line 303
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, "\u001bOu"

    aput-object v3, v1, v2

    .line 304
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v2, 0x6

    const-string v3, "\u001bOv"

    aput-object v3, v1, v2

    .line 305
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v2, 0x7

    const-string v3, "\u001bOw"

    aput-object v3, v1, v2

    .line 306
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "\u001bOx"

    aput-object v3, v1, v2

    .line 307
    iget-object v1, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "\u001bOy"

    aput-object v3, v1, v2

    .line 308
    iget-object v1, p0, Lde/mud/terminal/vt320;->PF4:Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->KPMinus:Ljava/lang/String;

    .line 309
    const-string v1, "\u001bOl"

    iput-object v1, p0, Lde/mud/terminal/vt320;->KPComma:Ljava/lang/String;

    .line 310
    const-string v1, "\u001bOn"

    iput-object v1, p0, Lde/mud/terminal/vt320;->KPPeriod:Ljava/lang/String;

    .line 311
    const-string v1, "\u001bOM"

    iput-object v1, p0, Lde/mud/terminal/vt320;->KPEnter:Ljava/lang/String;

    .line 313
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    const-string v2, "+"

    aput-object v2, v1, v6

    .line 315
    new-array v1, v7, [Ljava/lang/String;

    iput-object v1, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    const-string v2, "."

    aput-object v2, v1, v6

    .line 317
    return-void

    .line 236
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v2, "\u0008"

    aput-object v2, v1, v6

    .line 237
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v2, "\u007f"

    aput-object v2, v1, v8

    .line 238
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v2, "\u001b[3~"

    aput-object v2, v1, v9

    .line 239
    iget-object v1, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v2, "\u001b[2~"

    aput-object v2, v1, v10

    goto/16 :goto_0

    .line 277
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 278
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 279
    iget-object v1, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private _SetCursor(II)V
    .locals 4
    .parameter "row"
    .parameter "col"

    .prologue
    const/4 v2, 0x0

    .line 1513
    iget v3, p0, Lde/mud/terminal/vt320;->height:I

    add-int/lit8 v0, v3, -0x1

    .line 1514
    .local v0, maxr:I
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v1

    .line 1516
    .local v1, tm:I
    if-gez p1, :cond_0

    move p1, v2

    .end local p1
    :cond_0
    iput p1, p0, Lde/mud/terminal/vt320;->R:I

    .line 1517
    if-gez p2, :cond_3

    :goto_0
    iput v2, p0, Lde/mud/terminal/vt320;->C:I

    .line 1519
    iget-boolean v2, p0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    if-nez v2, :cond_1

    .line 1520
    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    add-int/2addr v2, v1

    iput v2, p0, Lde/mud/terminal/vt320;->R:I

    .line 1521
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v0

    .line 1523
    :cond_1
    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    if-le v2, v0, :cond_2

    iput v0, p0, Lde/mud/terminal/vt320;->R:I

    .line 1524
    :cond_2
    return-void

    .line 1517
    :cond_3
    iget v2, p0, Lde/mud/terminal/vt320;->width:I

    if-lt p2, v2, :cond_4

    iget v2, p0, Lde/mud/terminal/vt320;->width:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    move v2, p2

    goto :goto_0
.end method

.method private handle_dcs(Ljava/lang/String;)V
    .locals 2
    .parameter "dcs"

    .prologue
    .line 1197
    iget-object v0, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const-string v1, "DCS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    iget-object v0, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1201
    return-void
.end method

.method private handle_osc(Ljava/lang/String;)V
    .locals 12
    .parameter "osc"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x2

    .line 1204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_1

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "4;"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1206
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, colorData:[Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1211
    .local v2, colorIndex:I
    const-string v7, "rgb:"

    const/4 v8, 0x2

    aget-object v8, v1, v8

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1212
    const/4 v7, 0x2

    aget-object v7, v1, v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1214
    .local v6, rgb:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v5, v7, 0xff

    .line 1215
    .local v5, red:I
    const/4 v7, 0x1

    aget-object v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v4, v7, 0xff

    .line 1216
    .local v4, green:I
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 1217
    .local v0, blue:I
    iget-object v7, p0, Lde/mud/terminal/vt320;->display:Lde/mud/terminal/VDUDisplay;

    invoke-interface {v7, v2, v5, v4, v0}, Lde/mud/terminal/VDUDisplay;->setColor(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v0           #blue:I
    .end local v1           #colorData:[Ljava/lang/String;
    .end local v2           #colorIndex:I
    .end local v4           #green:I
    .end local v5           #red:I
    .end local v6           #rgb:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1219
    .restart local v1       #colorData:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1220
    .local v3, e:Ljava/lang/Exception;
    iget-object v7, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const-string v8, "OSC: invalid color sequence encountered: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1221
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    iget-object v7, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 1223
    iget-object v7, p0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 1226
    .end local v1           #colorData:[Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OSC: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putChar(CZZ)V
    .locals 23
    .parameter "c"
    .parameter "isWide"
    .parameter "doshowcursor"

    .prologue
    .line 1527
    move-object/from16 v0, p0

    iget v6, v0, Lde/mud/terminal/vt320;->height:I

    .line 1528
    .local v6, rows:I
    move-object/from16 v0, p0

    iget v5, v0, Lde/mud/terminal/vt320;->width:I

    .line 1554
    .local v5, columns:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->term_state:I

    packed-switch v2, :pswitch_data_0

    .line 2992
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2996
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lde/mud/terminal/vt320;->setCursorPosition(II)V

    .line 2997
    return-void

    .line 1559
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lde/mud/terminal/vt320;->useibmcharset:Z

    if-nez v2, :cond_1

    .line 1560
    const/4 v14, 0x1

    .line 1561
    .local v14, doneflag:Z
    sparse-switch p1, :sswitch_data_0

    .line 1611
    const/4 v14, 0x0

    .line 1614
    :goto_1
    if-nez v14, :cond_0

    .line 1616
    .end local v14           #doneflag:Z
    :cond_1
    sparse-switch p1, :sswitch_data_1

    .line 1688
    move-object/from16 v0, p0

    iget-char v0, v0, Lde/mud/terminal/vt320;->gl:C

    move/from16 v22, v0

    .line 1690
    .local v22, thisgl:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->onegl:I

    if-ltz v2, :cond_2

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Lde/mud/terminal/vt320;->onegl:I

    move/from16 v22, v0

    .line 1692
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->onegl:I

    .line 1694
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    .line 1695
    const/16 v2, 0x20

    move/from16 v0, p1

    if-ge v0, v2, :cond_4

    .line 1696
    if-eqz p1, :cond_3

    .line 1700
    :cond_3
    if-eqz p1, :cond_0

    .line 1703
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-lt v2, v5, :cond_6

    .line 1704
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lde/mud/terminal/vt320;->wraparound:Z

    if-eqz v2, :cond_19

    .line 1705
    move v13, v6

    .line 1708
    .local v13, bot:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-gt v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 1709
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 1711
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v13, -0x1

    if-ge v2, v3, :cond_18

    .line 1712
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 1717
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1724
    .end local v13           #bot:I
    :cond_6
    :goto_3
    const/16 v18, 0x0

    .line 1727
    .local v18, mapped:Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    if-eqz v2, :cond_8

    .line 1728
    const/16 v2, 0x20

    move/from16 v0, p1

    if-lt v0, v2, :cond_7

    const/16 v2, 0x7f

    move/from16 v0, p1

    if-gt v0, v2, :cond_7

    .line 1729
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    aget-char v2, v2, v22

    sparse-switch v2, :sswitch_data_2

    .line 1755
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported GL mapping: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->gx:[C

    aget-char v3, v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 1759
    :cond_7
    :goto_4
    if-nez v18, :cond_8

    const/16 v2, 0x80

    move/from16 v0, p1

    if-lt v0, v2, :cond_8

    const/16 v2, 0xff

    move/from16 v0, p1

    if-gt v0, v2, :cond_8

    .line 1760
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object/from16 v0, p0

    iget-char v3, v0, Lde/mud/terminal/vt320;->gr:C

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_3

    .line 1773
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported GR mapping: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object/from16 v0, p0

    iget-char v4, v0, Lde/mud/terminal/vt320;->gr:C

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 1778
    :cond_8
    :goto_5
    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lde/mud/terminal/vt320;->useibmcharset:Z

    if-eqz v2, :cond_9

    .line 1779
    invoke-virtual/range {p0 .. p1}, Lde/mud/terminal/vt320;->map_cp850_unicode(C)C

    move-result p1

    .line 1782
    :cond_9
    if-eqz p2, :cond_b

    .line 1783
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v5, -0x1

    if-lt v2, v3, :cond_b

    .line 1784
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lde/mud/terminal/vt320;->wraparound:Z

    if-eqz v2, :cond_1f

    .line 1785
    move v13, v6

    .line 1788
    .restart local v13       #bot:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-gt v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v3

    if-lt v2, v3, :cond_a

    .line 1789
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    .line 1791
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v13, -0x1

    if-ge v2, v3, :cond_1e

    .line 1792
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 1797
    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1805
    .end local v13           #bot:I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->insertmode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 1806
    if-eqz p2, :cond_20

    .line 1807
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v4, v0, Lde/mud/terminal/vt320;->attributes:I

    const/high16 v7, 0x800

    or-int/2addr v4, v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lde/mud/terminal/vt320;->insertChar(IICI)V

    .line 1808
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    const/16 v4, 0x20

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->attributes:I

    const/high16 v8, 0x800

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v7}, Lde/mud/terminal/vt320;->insertChar(IICI)V

    .line 1828
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1563
    .end local v18           #mapped:Z
    .end local v22           #thisgl:I
    .restart local v14       #doneflag:Z
    :sswitch_0
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    .line 1564
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_1

    .line 1567
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v3

    if-le v2, v3, :cond_c

    .line 1568
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_1

    .line 1570
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_1

    .line 1585
    :sswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-eq v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-ne v2, v3, :cond_e

    .line 1586
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_1

    .line 1588
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_1

    .line 1593
    :sswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-ne v2, v3, :cond_10

    .line 1594
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    .line 1597
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_1

    .line 1596
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_9

    .line 1602
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->C:I

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    goto/16 :goto_1

    .line 1607
    :sswitch_5
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    .line 1608
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_1

    .line 1618
    .end local v14           #doneflag:Z
    :sswitch_6
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1621
    :sswitch_7
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1624
    :sswitch_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1626
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1628
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1629
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1632
    :sswitch_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 1633
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    goto/16 :goto_0

    .line 1636
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->answerBack:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 1640
    :sswitch_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 1641
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1644
    :sswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1645
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-gez v2, :cond_11

    .line 1646
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1647
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    goto/16 :goto_0

    .line 1652
    :cond_12
    :sswitch_d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1653
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-ge v2, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->C:I

    aget-byte v2, v2, v3

    if-eqz v2, :cond_12

    .line 1654
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    goto/16 :goto_0

    .line 1657
    :sswitch_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1662
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lde/mud/terminal/vt320;->vms:Z

    if-nez v2, :cond_15

    .line 1663
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->lastwaslf:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 1665
    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->lastwaslf:I

    .line 1668
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-lt v2, v3, :cond_17

    .line 1669
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1671
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1674
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->beep()V

    goto/16 :goto_0

    .line 1678
    :sswitch_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 1679
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1683
    :sswitch_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 1684
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1715
    .restart local v13       #bot:I
    .restart local v22       #thisgl:I
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_2

    .line 1720
    .end local v13           #bot:I
    :cond_19
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_3

    .line 1733
    .restart local v18       #mapped:Z
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "scoansi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "ansi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1734
    :cond_1a
    const/4 v15, 0x0

    .local v15, i:I
    :goto_a
    const-string v2, "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v15, v2, :cond_1c

    .line 1741
    .end local v15           #i:I
    :cond_1b
    :goto_b
    const/16 v2, 0x5f

    move/from16 v0, p1

    if-lt v0, v2, :cond_7

    const/16 v2, 0x7e

    move/from16 v0, p1

    if-gt v0, v2, :cond_7

    .line 1742
    sget-object v2, Lde/mud/terminal/vt320;->DECSPECIAL:[C

    move/from16 v0, p1

    int-to-short v3, v0

    add-int/lit8 v3, v3, -0x5f

    aget-char p1, v2, v3

    .line 1743
    const/16 v18, 0x1

    .line 1745
    goto/16 :goto_4

    .line 1735
    .restart local v15       #i:I
    :cond_1c
    const-string v2, "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v0, p1

    if-ne v0, v2, :cond_1d

    .line 1736
    const-string v2, "Tm7k3x4u?kZl@mYjEnB\u2566DqCtAvM\u2550:\u2551N\u2557I\u2554;\u2557H\u255a0a<\u255d"

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1737
    goto :goto_b

    .line 1734
    :cond_1d
    add-int/lit8 v15, v15, 0x2

    goto :goto_a

    .line 1747
    .end local v15           #i:I
    :sswitch_14
    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-char v0, v2

    move/from16 p1, v0

    .line 1748
    const/16 v18, 0x1

    .line 1749
    goto/16 :goto_4

    .line 1752
    :sswitch_15
    const/16 v18, 0x1

    .line 1753
    goto/16 :goto_4

    .line 1762
    :sswitch_16
    const/16 v2, 0xdf

    move/from16 v0, p1

    if-lt v0, v2, :cond_8

    const/16 v2, 0xfe

    move/from16 v0, p1

    if-gt v0, v2, :cond_8

    .line 1763
    sget-object v2, Lde/mud/terminal/vt320;->DECSPECIAL:[C

    move/from16 v0, p1

    add-int/lit16 v3, v0, -0xdf

    aget-char p1, v2, v3

    .line 1764
    const/16 v18, 0x1

    .line 1766
    goto/16 :goto_5

    .line 1770
    :sswitch_17
    const/16 v18, 0x1

    .line 1771
    goto/16 :goto_5

    .line 1795
    .restart local v13       #bot:I
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_6

    .line 1800
    .end local v13           #bot:I
    :cond_1f
    add-int/lit8 v2, v5, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_7

    .line 1810
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v4, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lde/mud/terminal/vt320;->insertChar(IICI)V

    goto/16 :goto_8

    .line 1812
    :cond_21
    if-eqz p2, :cond_22

    .line 1813
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v4, v0, Lde/mud/terminal/vt320;->attributes:I

    const/high16 v7, 0x800

    or-int/2addr v4, v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lde/mud/terminal/vt320;->putChar(IICI)V

    .line 1814
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    const/16 v4, 0x20

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->attributes:I

    const/high16 v8, 0x800

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v7}, Lde/mud/terminal/vt320;->putChar(IICI)V

    goto/16 :goto_8

    .line 1816
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v4, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Lde/mud/terminal/vt320;->putChar(IICI)V

    goto/16 :goto_8

    .line 1834
    .end local v18           #mapped:Z
    .end local v22           #thisgl:I
    :pswitch_2
    const/16 v2, 0x20

    move/from16 v0, p1

    if-ge v0, v2, :cond_23

    const/16 v2, 0x1b

    move/from16 v0, p1

    if-eq v0, v2, :cond_23

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/mud/terminal/vt320;->handle_osc(Ljava/lang/String;)V

    .line 1836
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1840
    :cond_23
    const/16 v2, 0x5c

    move/from16 v0, p1

    if-ne v0, v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_24

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/mud/terminal/vt320;->handle_osc(Ljava/lang/String;)V

    .line 1842
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1845
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    goto/16 :goto_0

    .line 1848
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 1849
    packed-switch p1, :pswitch_data_1

    .line 1857
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC <space> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unhandled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1851
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 1854
    :pswitch_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 1861
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 1862
    sparse-switch p1, :sswitch_data_4

    .line 2039
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC unknown letter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1864
    :sswitch_18
    const/16 v2, 0xd

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1867
    :sswitch_19
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1871
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->reset()V

    goto/16 :goto_0

    .line 1874
    :sswitch_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    .line 1875
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1877
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1878
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 1879
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1882
    :sswitch_1c
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->osc:Ljava/lang/String;

    .line 1883
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1886
    :sswitch_1d
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    .line 1887
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1890
    :sswitch_1e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 1891
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1894
    :sswitch_1f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 1895
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-lt v2, v6, :cond_0

    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1898
    :sswitch_20
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1899
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-lt v2, v5, :cond_0

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1902
    :sswitch_21
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1905
    :sswitch_22
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-eq v2, v3, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-ne v2, v3, :cond_26

    .line 1906
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    .line 1909
    :goto_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 1908
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_c

    .line 1914
    :sswitch_23
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-eq v2, v3, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-ne v2, v3, :cond_28

    .line 1915
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1917
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1922
    :sswitch_24
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-ge v2, v3, :cond_29

    .line 1923
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    sub-int v2, v6, v2

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 1924
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v5, -0x1

    if-ge v2, v3, :cond_0

    .line 1925
    move-object/from16 v0, p0

    iget v8, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    sub-int v10, v5, v2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 1928
    :sswitch_25
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v5, -0x1

    if-ge v2, v3, :cond_0

    .line 1929
    move-object/from16 v0, p0

    iget v8, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    sub-int v10, v5, v2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 1932
    :sswitch_26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC M : R is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tm is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bm is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 1933
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v3

    if-le v2, v3, :cond_2a

    .line 1934
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 1936
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 1946
    :sswitch_27
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-lt v2, v5, :cond_2b

    .line 1947
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1948
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->C:I

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 1951
    :sswitch_28
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1954
    :sswitch_29
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->onegl:I

    goto/16 :goto_0

    .line 1960
    :sswitch_2a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->keypadmode:Z

    goto/16 :goto_0

    .line 1963
    :sswitch_2b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->vt52mode:Z

    goto/16 :goto_0

    .line 1968
    :sswitch_2c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->keypadmode:Z

    goto/16 :goto_0

    .line 1971
    :sswitch_2d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->Sc:I

    .line 1972
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->Sr:I

    .line 1973
    move-object/from16 v0, p0

    iget-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->Sgl:C

    .line 1974
    move-object/from16 v0, p0

    iget-char v2, v0, Lde/mud/terminal/vt320;->gr:C

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->Sgr:C

    .line 1975
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->Sa:I

    .line 1976
    const/4 v2, 0x4

    new-array v2, v2, [C

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->Sgx:[C

    .line 1977
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_d
    const/4 v2, 0x4

    if-ge v15, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->Sgx:[C

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->gx:[C

    aget-char v3, v3, v15

    aput-char v3, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1982
    .end local v15           #i:I
    :sswitch_2e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->Sc:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 1983
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->Sr:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 1984
    move-object/from16 v0, p0

    iget-char v2, v0, Lde/mud/terminal/vt320;->Sgl:C

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 1985
    move-object/from16 v0, p0

    iget-char v2, v0, Lde/mud/terminal/vt320;->Sgr:C

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gr:C

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->Sgx:[C

    if-eqz v2, :cond_2c

    .line 1987
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_e
    const/4 v2, 0x4

    if-lt v15, v2, :cond_2d

    .line 1988
    .end local v15           #i:I
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->Sa:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 1987
    .restart local v15       #i:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->Sgx:[C

    aget-char v3, v3, v15

    aput-char v3, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 1993
    .end local v15           #i:I
    :sswitch_2f
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 1994
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 1997
    :sswitch_30
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 1998
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2001
    :sswitch_31
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2002
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2005
    :sswitch_32
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2006
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2009
    :sswitch_33
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gr:C

    .line 2010
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2013
    :sswitch_34
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 2014
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2017
    :sswitch_35
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gr:C

    .line 2018
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2021
    :sswitch_36
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 2022
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2025
    :sswitch_37
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gr:C

    .line 2026
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_0

    .line 2029
    :sswitch_38
    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2032
    :sswitch_39
    const/16 v2, 0x12

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2036
    :sswitch_3a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2044
    :pswitch_7
    add-int/lit8 v2, p1, -0x25

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 2045
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-gez v2, :cond_2f

    .line 2046
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 2049
    :cond_2e
    :goto_f
    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2047
    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->width:I

    if-lt v2, v3, :cond_2e

    .line 2048
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->width:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto :goto_f

    .line 2052
    :pswitch_8
    add-int/lit8 v2, p1, -0x25

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2053
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-gez v2, :cond_31

    .line 2054
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2057
    :cond_30
    :goto_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2055
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->height:I

    if-lt v2, v3, :cond_30

    .line 2056
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->height:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_10

    .line 2060
    :pswitch_9
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_32

    const/16 v2, 0x41

    move/from16 v0, p1

    if-eq v0, v2, :cond_32

    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_32

    const/16 v2, 0x3c

    move/from16 v0, p1

    if-eq v0, v2, :cond_32

    .line 2061
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": G0 char set?  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2066
    :goto_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2064
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    goto :goto_11

    .line 2069
    :pswitch_a
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_33

    const/16 v2, 0x41

    move/from16 v0, p1

    if-eq v0, v2, :cond_33

    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_33

    const/16 v2, 0x3c

    move/from16 v0, p1

    if-eq v0, v2, :cond_33

    .line 2070
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC ) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") :G1 char set?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2075
    :goto_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2073
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v3, 0x1

    aput-char p1, v2, v3

    goto :goto_12

    .line 2078
    :pswitch_b
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_34

    const/16 v2, 0x41

    move/from16 v0, p1

    if-eq v0, v2, :cond_34

    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_34

    const/16 v2, 0x3c

    move/from16 v0, p1

    if-eq v0, v2, :cond_34

    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC*:G2 char set?  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2084
    :goto_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2082
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v3, 0x2

    aput-char p1, v2, v3

    goto :goto_13

    .line 2087
    :pswitch_c
    const/16 v2, 0x30

    move/from16 v0, p1

    if-eq v0, v2, :cond_35

    const/16 v2, 0x41

    move/from16 v0, p1

    if-eq v0, v2, :cond_35

    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_35

    const/16 v2, 0x3c

    move/from16 v0, p1

    if-eq v0, v2, :cond_35

    .line 2088
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC+:G3 char set?  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2093
    :goto_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2091
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v3, 0x3

    aput-char p1, v2, v3

    goto :goto_14

    .line 2096
    :pswitch_d
    packed-switch p1, :pswitch_data_2

    .line 2103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC # "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2106
    :cond_36
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2098
    :pswitch_e
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_15
    if-ge v15, v5, :cond_36

    .line 2099
    const/16 v16, 0x0

    .local v16, j:I
    :goto_16
    move/from16 v0, v16

    if-lt v0, v6, :cond_37

    .line 2098
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 2100
    :cond_37
    const/16 v2, 0x45

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2, v3}, Lde/mud/terminal/vt320;->putChar(IICI)V

    .line 2099
    add-int/lit8 v16, v16, 0x1

    goto :goto_16

    .line 2109
    .end local v15           #i:I
    .end local v16           #j:I
    :pswitch_f
    const/16 v2, 0x5c

    move/from16 v0, p1

    if-ne v0, v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_38

    .line 2110
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/mud/terminal/vt320;->handle_dcs(Ljava/lang/String;)V

    .line 2111
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2114
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->dcs:Ljava/lang/String;

    goto/16 :goto_0

    .line 2118
    :pswitch_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2119
    sparse-switch p1, :sswitch_data_5

    .line 2304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unsupported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2130
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->DCEvar:I

    aget v4, v4, v7

    mul-int/lit8 v4, v4, 0xa

    add-int v4, v4, p1

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    .line 2131
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2134
    :sswitch_3c
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2135
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->DCEvar:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 2136
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2140
    :sswitch_3d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s unimplemented!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2144
    :sswitch_3e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2146
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_17
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-gt v15, v2, :cond_0

    .line 2147
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v2, v2, v15

    sparse-switch v2, :sswitch_data_6

    .line 2171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r, unimplemented!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2146
    :goto_18
    :sswitch_3f
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 2149
    :sswitch_40
    const/16 v2, 0x50

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->height:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->setScreenSize(IIZ)V

    goto :goto_18

    .line 2156
    :sswitch_41
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    goto :goto_18

    .line 2159
    :sswitch_42
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->wraparound:Z

    goto :goto_18

    .line 2168
    :sswitch_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v2, v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->mouserpt:I

    goto :goto_18

    .line 2179
    .end local v15           #i:I
    :sswitch_44
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_19
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-gt v15, v2, :cond_0

    .line 2180
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v2, v2, v15

    sparse-switch v2, :sswitch_data_7

    .line 2217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h, unsupported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2179
    :goto_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    .line 2182
    :sswitch_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001bOA"

    aput-object v4, v2, v3

    .line 2183
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001bOB"

    aput-object v4, v2, v3

    .line 2184
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001bOC"

    aput-object v4, v2, v3

    .line 2185
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001bOD"

    aput-object v4, v2, v3

    goto :goto_1a

    .line 2188
    :sswitch_46
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->vt52mode:Z

    goto :goto_1a

    .line 2191
    :sswitch_47
    const/16 v2, 0x84

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->height:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->setScreenSize(IIZ)V

    goto :goto_1a

    .line 2194
    :sswitch_48
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    goto :goto_1a

    .line 2197
    :sswitch_49
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->wraparound:Z

    goto :goto_1a

    .line 2200
    :sswitch_4a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->showCursor(Z)V

    goto :goto_1a

    .line 2207
    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v2, v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->mouserpt:I

    goto :goto_1a

    .line 2227
    .end local v15           #i:I
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    :pswitch_11
    goto/16 :goto_0

    .line 2246
    :sswitch_4d
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_1b
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-gt v15, v2, :cond_0

    .line 2247
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v2, v2, v15

    sparse-switch v2, :sswitch_data_8

    .line 2284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " l, unsupported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2246
    :goto_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 2249
    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001b[A"

    aput-object v4, v2, v3

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001b[B"

    aput-object v4, v2, v3

    .line 2251
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001b[C"

    aput-object v4, v2, v3

    .line 2252
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u001b[D"

    aput-object v4, v2, v3

    goto :goto_1c

    .line 2255
    :sswitch_4f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->vt52mode:Z

    goto :goto_1c

    .line 2258
    :sswitch_50
    const/16 v2, 0x50

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->height:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->setScreenSize(IIZ)V

    goto :goto_1c

    .line 2261
    :sswitch_51
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->moveoutsidemargins:Z

    goto :goto_1c

    .line 2264
    :sswitch_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->wraparound:Z

    goto :goto_1c

    .line 2267
    :sswitch_53
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->showCursor(Z)V

    goto :goto_1c

    .line 2281
    :sswitch_54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->mouserpt:I

    goto :goto_1c

    .line 2292
    .end local v15           #i:I
    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    .line 2299
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " n, unsupported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2295
    :pswitch_12
    const-string v2, "\u001b[?13n"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    .line 2296
    const-string v2, "ESC[5n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2309
    :pswitch_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2310
    packed-switch p1, :pswitch_data_5

    .line 2315
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown character ESC[! character is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2312
    :pswitch_14
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2320
    :pswitch_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2321
    packed-switch p1, :pswitch_data_6

    .line 2335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown ESC [...  \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2323
    :pswitch_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Conformance level: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (unsupported),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_39

    .line 2325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 2328
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 2329
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 2331
    :cond_3a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->output8bit:Z

    goto/16 :goto_0

    .line 2340
    :pswitch_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2341
    packed-switch p1, :pswitch_data_7

    .line 2390
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const-string v3, "Unknown ESC [ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2391
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_1d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-le v15, v2, :cond_3b

    .line 2395
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2396
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 2352
    .end local v15           #i:I
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->DCEvar:I

    aget v4, v4, v7

    mul-int/lit8 v4, v4, 0xa

    add-int v4, v4, p1

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    .line 2353
    const/16 v2, 0x11

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2356
    :pswitch_1a
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2357
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->DCEvar:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 2358
    const/16 v2, 0x11

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2365
    :pswitch_1b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2367
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit16 v2, v2, -0x3fe1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2368
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 2369
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x2

    .line 2368
    or-int/2addr v2, v3

    .line 2370
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x4

    shr-int/lit8 v3, v3, 0x2

    .line 2368
    or-int v20, v2, v3

    .line 2371
    .local v20, newcolor:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    add-int/lit8 v3, v20, 0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 2379
    .end local v20           #newcolor:I
    :pswitch_1c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2381
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, -0x7fc001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2382
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 2383
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x2

    .line 2382
    or-int/2addr v2, v3

    .line 2384
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x4

    shr-int/lit8 v3, v3, 0x2

    .line 2382
    or-int v20, v2, v3

    .line 2385
    .restart local v20       #newcolor:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    add-int/lit8 v3, v20, 0x1

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 2392
    .end local v20           #newcolor:I
    .restart local v15       #i:I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2393
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2391
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1d

    .line 2402
    .end local v15           #i:I
    :pswitch_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2403
    packed-switch p1, :pswitch_data_8

    .line 2417
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNKNOWN Status Display code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", with Pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2405
    :pswitch_1e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Active Status Display now "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->statusmode:I

    goto/16 :goto_0

    .line 2414
    :pswitch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Status Line mode now "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2422
    :pswitch_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    .line 2423
    packed-switch p1, :pswitch_data_9

    .line 2971
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const-string v3, "ESC [ unknown letter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2972
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2973
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2974
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2975
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2976
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2977
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 2425
    :pswitch_22
    const/16 v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2428
    :pswitch_23
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2431
    :pswitch_24
    const/16 v2, 0x11

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2434
    :pswitch_25
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2437
    :pswitch_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 2439
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2451
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->DCEvar:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->DCEvar:I

    aget v4, v4, v7

    mul-int/lit8 v4, v4, 0xa

    add-int v4, v4, p1

    add-int/lit8 v4, v4, -0x30

    aput v4, v2, v3

    .line 2452
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2455
    :pswitch_28
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    .line 2456
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->DCEvar:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 2457
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 2462
    :pswitch_29
    const-string v21, ""

    .line 2463
    .local v21, subcode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "vt320"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v21, "63;"

    .line 2464
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "vt220"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string v21, "62;"

    .line 2465
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "vt100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v21, "61;"

    .line 2466
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u001b[?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1;2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2476
    .end local v21           #subcode:Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a

    :pswitch_2b
    goto/16 :goto_0

    .line 2481
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->Tabs:[B

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->C:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    goto/16 :goto_0

    .line 2478
    :pswitch_2d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->width:I

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lde/mud/terminal/vt320;->Tabs:[B

    goto/16 :goto_0

    .line 2488
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_9

    .line 2497
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupported: ESC [ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2490
    :sswitch_56
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->insertmode:I

    goto/16 :goto_0

    .line 2493
    :sswitch_57
    const-string v2, "Setting CRLF to TRUE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2494
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->sendcrlf:Z

    goto/16 :goto_0

    .line 2510
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b

    .line 2524
    :pswitch_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " i, unimplemented!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2528
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_a

    .line 2537
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ESC [ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " l, unimplemented!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2530
    :sswitch_58
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->insertmode:I

    goto/16 :goto_0

    .line 2533
    :sswitch_59
    const-string v2, "Setting CRLF to FALSE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2534
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->sendcrlf:Z

    goto/16 :goto_0

    .line 2545
    :pswitch_32
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v3

    if-lt v2, v3, :cond_3f

    .line 2546
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getTopMargin()I

    move-result v17

    .line 2549
    .local v17, limit:I
    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_40

    .line 2550
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2553
    :goto_1f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    .line 2554
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2548
    .end local v17           #limit:I
    :cond_3f
    const/16 v17, 0x0

    .restart local v17       #limit:I
    goto :goto_1e

    .line 2552
    :cond_40
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_1f

    .line 2563
    .end local v17           #limit:I
    :pswitch_33
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v3

    if-gt v2, v3, :cond_41

    .line 2564
    invoke-virtual/range {p0 .. p0}, Lde/mud/terminal/vt320;->getBottomMargin()I

    move-result v17

    .line 2567
    .restart local v17       #limit:I
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_42

    .line 2568
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2571
    :goto_21
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move/from16 v0, v17

    if-le v2, v0, :cond_0

    .line 2572
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2566
    .end local v17           #limit:I
    :cond_41
    add-int/lit8 v17, v6, -0x1

    .restart local v17       #limit:I
    goto :goto_20

    .line 2570
    :cond_42
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_21

    .line 2582
    .end local v17           #limit:I
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_43

    .line 2583
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 2584
    :cond_43
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v7, v4, -0x1

    aput v7, v2, v3

    if-gtz v4, :cond_44

    .line 2587
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-lt v2, v5, :cond_0

    .line 2588
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2585
    :cond_44
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto :goto_22

    .line 2593
    :pswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2594
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-gez v2, :cond_45

    .line 2595
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2596
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->height:I

    if-lt v2, v3, :cond_0

    .line 2597
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->height:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2602
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_46

    .line 2603
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 2604
    :cond_46
    :goto_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v7, v4, -0x1

    aput v7, v2, v3

    if-gtz v4, :cond_47

    .line 2607
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2605
    :cond_47
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto :goto_23

    .line 2612
    :pswitch_37
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-lez v2, :cond_4b

    .line 2614
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2615
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-gez v2, :cond_4a

    .line 2616
    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2622
    :cond_48
    :goto_24
    move-object/from16 v0, p0

    iget v13, v0, Lde/mud/terminal/vt320;->R:I

    .line 2623
    .restart local v13       #bot:I
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-lt v2, v3, :cond_49

    .line 2624
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2625
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-gez v2, :cond_49

    .line 2626
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2628
    :cond_49
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lde/mud/terminal/vt320;->setMargins(II)V

    .line 2629
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lde/mud/terminal/vt320;->_SetCursor(II)V

    goto/16 :goto_0

    .line 2617
    .end local v13           #bot:I
    :cond_4a
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-lt v2, v6, :cond_48

    .line 2618
    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_24

    .line 2621
    :cond_4b
    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto :goto_24

    .line 2634
    :pswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 2635
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-gez v2, :cond_4c

    .line 2636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2637
    :cond_4c
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->width:I

    if-lt v2, v3, :cond_0

    .line 2638
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->width:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto/16 :goto_0

    .line 2643
    :pswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lde/mud/terminal/vt320;->_SetCursor(II)V

    goto/16 :goto_0

    .line 2651
    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2652
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 2653
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-gez v2, :cond_4e

    .line 2654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 2657
    :cond_4d
    :goto_25
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-gez v2, :cond_4f

    .line 2658
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2655
    :cond_4e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->width:I

    if-lt v2, v3, :cond_4d

    .line 2656
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->width:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    goto :goto_25

    .line 2659
    :cond_4f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->height:I

    if-lt v2, v3, :cond_0

    .line 2660
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->height:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    goto/16 :goto_0

    .line 2665
    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_50

    .line 2666
    add-int/lit8 v2, v6, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IZ)V

    goto/16 :goto_0

    .line 2668
    :cond_50
    add-int/lit8 v2, v6, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 2672
    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_51

    .line 2673
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IZ)V

    goto/16 :goto_0

    .line 2675
    :cond_51
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 2680
    :pswitch_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_52

    .line 2681
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lde/mud/terminal/vt320;->insertLine(IZ)V

    goto/16 :goto_0

    .line 2683
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lde/mud/terminal/vt320;->insertLine(IIZ)V

    goto/16 :goto_0

    .line 2688
    :pswitch_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_53

    .line 2689
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->deleteLine(I)V

    goto/16 :goto_0

    .line 2691
    :cond_53
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ge v15, v2, :cond_0

    .line 2692
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->deleteLine(I)V

    .line 2691
    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    .line 2698
    .end local v15           #i:I
    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_c

    :pswitch_40
    goto/16 :goto_0

    .line 2701
    :pswitch_41
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v5, -0x1

    if-ge v2, v3, :cond_0

    .line 2702
    move-object/from16 v0, p0

    iget v8, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    sub-int v10, v5, v2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2705
    :pswitch_42
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-lez v2, :cond_0

    .line 2706
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2709
    :pswitch_43
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2715
    :pswitch_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d

    goto/16 :goto_0

    .line 2717
    :pswitch_45
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v3, v6, -0x1

    if-ge v2, v3, :cond_54

    .line 2718
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    add-int/lit8 v9, v2, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    sub-int v2, v6, v2

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 2719
    :cond_54
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v3, v5, -0x1

    if-ge v2, v3, :cond_0

    .line 2720
    move-object/from16 v0, p0

    iget v8, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    sub-int v10, v5, v2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2723
    :pswitch_46
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    if-lez v2, :cond_55

    .line 2724
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 2725
    :cond_55
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    if-lez v2, :cond_0

    .line 2726
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2729
    :pswitch_47
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2738
    :pswitch_48
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ge v15, v2, :cond_0

    .line 2739
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    const/16 v4, 0x20

    move-object/from16 v0, p0

    iget v7, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v7}, Lde/mud/terminal/vt320;->insertChar(IICI)V

    .line 2738
    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    .line 2743
    .end local v15           #i:I
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 2746
    .local v10, toerase:I
    if-nez v10, :cond_56

    .line 2747
    const/4 v10, 0x1

    .line 2748
    :cond_56
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    add-int/2addr v2, v10

    if-le v2, v5, :cond_57

    .line 2749
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    sub-int v10, v5, v2

    .line 2750
    :cond_57
    move-object/from16 v0, p0

    iget v8, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v9, v0, Lde/mud/terminal/vt320;->R:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    goto/16 :goto_0

    .line 2757
    .end local v10           #toerase:I
    :pswitch_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 2758
    :cond_58
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ge v15, v2, :cond_0

    .line 2759
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lde/mud/terminal/vt320;->deleteChar(II)V

    .line 2758
    add-int/lit8 v15, v15, 0x1

    goto :goto_28

    .line 2762
    .end local v15           #i:I
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e

    goto/16 :goto_0

    .line 2764
    :pswitch_4c
    const-string v2, "\u001b[0n"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2772
    :pswitch_4d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u001b["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lde/mud/terminal/vt320;->C:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "R"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2783
    :pswitch_4e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->C:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->Sc:I

    .line 2784
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->R:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->Sr:I

    .line 2785
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->Sa:I

    goto/16 :goto_0

    .line 2790
    :pswitch_4f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->Sc:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->C:I

    .line 2791
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->Sr:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->R:I

    .line 2792
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->Sa:I

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_0

    .line 2799
    :pswitch_50
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-nez v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_59

    .line 2800
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2801
    :cond_59
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_29
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-gt v15, v2, :cond_0

    .line 2802
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v2, v2, v15

    packed-switch v2, :pswitch_data_f

    .line 2948
    :pswitch_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const-string v3, "ESC [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2949
    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v3, v3, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2950
    const-string v3, " m unknown..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->debugStr:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2801
    :cond_5a
    :goto_2a
    :pswitch_52
    add-int/lit8 v15, v15, 0x1

    goto :goto_29

    .line 2804
    :pswitch_53
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    if-lez v2, :cond_5a

    .line 2805
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "scoansi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2806
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, 0x7fffe0

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto :goto_2a

    .line 2808
    :cond_5b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto :goto_2a

    .line 2813
    :pswitch_54
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2814
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto :goto_2a

    .line 2818
    :pswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    const-string v3, "scoansi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->DCEvar:I

    sub-int/2addr v2, v15

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5d

    .line 2820
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, -0x7fffe2

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2822
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    add-int/lit8 v3, v15, 0x1

    aget v19, v2, v3

    .line 2823
    .local v19, ncolor:I
    and-int/lit8 v2, v19, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5c

    .line 2824
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2825
    :cond_5c
    and-int/lit8 v2, v19, 0x1

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v19, 0x2

    or-int/2addr v2, v3

    and-int/lit8 v3, v19, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int v19, v2, v3

    .line 2826
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    add-int/lit8 v3, v19, 0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2827
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    add-int/lit8 v3, v15, 0x2

    aget v19, v2, v3

    .line 2828
    and-int/lit8 v2, v19, 0x1

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v3, v19, 0x2

    or-int/2addr v2, v3

    and-int/lit8 v3, v19, 0x4

    shr-int/lit8 v3, v3, 0x2

    or-int v19, v2, v3

    .line 2829
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    add-int/lit8 v3, v19, 0x1

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2830
    add-int/lit8 v15, v15, 0x2

    goto/16 :goto_2a

    .line 2832
    .end local v19           #ncolor:I
    :cond_5d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2836
    :pswitch_56
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2839
    :pswitch_57
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2842
    :pswitch_58
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2845
    :pswitch_59
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2852
    :pswitch_5a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 2853
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_2a

    .line 2859
    :pswitch_5b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-char v2, v0, Lde/mud/terminal/vt320;->gl:C

    .line 2860
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lde/mud/terminal/vt320;->usedcharsets:Z

    goto/16 :goto_2a

    .line 2863
    :pswitch_5c
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0xa

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2866
    :pswitch_5d
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0x5

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2871
    :pswitch_5e
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0x5

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2874
    :pswitch_5f
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0x11

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2877
    :pswitch_60
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0x3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2880
    :pswitch_61
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2890
    :pswitch_62
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit16 v2, v2, -0x3fe1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2891
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v3, v3, v15

    add-int/lit8 v3, v3, -0x1e

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2894
    :pswitch_63
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    add-int/lit8 v3, v15, 0x1

    aget v2, v2, v3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5a

    .line 2895
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit16 v2, v2, -0x3fe1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2896
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    add-int/lit8 v4, v15, 0x2

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2897
    add-int/lit8 v15, v15, 0x2

    .line 2899
    goto/16 :goto_2a

    .line 2901
    :pswitch_64
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit16 v2, v2, -0x3fe1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2911
    :pswitch_65
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, -0x7fc001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2912
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v3, v3, v15

    add-int/lit8 v3, v3, -0x28

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2915
    :pswitch_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    add-int/lit8 v3, v15, 0x1

    aget v2, v2, v3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5a

    .line 2916
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, -0x7fc001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2917
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    add-int/lit8 v4, v15, 0x2

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2918
    add-int/lit8 v15, v15, 0x2

    .line 2920
    goto/16 :goto_2a

    .line 2922
    :pswitch_67
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, -0x7fc001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2932
    :pswitch_68
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    and-int/lit16 v2, v2, -0x3fe1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2933
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v3, v3, v15

    add-int/lit8 v3, v3, -0x52

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2943
    :pswitch_69
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    const v3, -0x7fc001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    .line 2944
    move-object/from16 v0, p0

    iget v2, v0, Lde/mud/terminal/vt320;->attributes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/mud/terminal/vt320;->DCEvars:[I

    aget v3, v3, v15

    add-int/lit8 v3, v3, -0x5c

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->attributes:I

    goto/16 :goto_2a

    .line 2982
    .end local v15           #i:I
    :pswitch_6a
    packed-switch p1, :pswitch_data_10

    goto/16 :goto_0

    .line 2984
    :pswitch_6b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lde/mud/terminal/vt320;->term_state:I

    goto/16 :goto_0

    .line 1554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_20
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_2
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1d
        :pswitch_13
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_15
        :pswitch_17
        :pswitch_6a
    .end packed-switch

    .line 1561
    :sswitch_data_0
    .sparse-switch
        0x84 -> :sswitch_2
        0x85 -> :sswitch_3
        0x88 -> :sswitch_4
        0x8d -> :sswitch_1
        0x90 -> :sswitch_5
        0x9d -> :sswitch_0
    .end sparse-switch

    .line 1616
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_a
        0x7 -> :sswitch_10
        0x8 -> :sswitch_c
        0x9 -> :sswitch_d
        0xa -> :sswitch_f
        0xc -> :sswitch_b
        0xd -> :sswitch_e
        0xe -> :sswitch_11
        0xf -> :sswitch_12
        0x1b -> :sswitch_9
        0x8e -> :sswitch_7
        0x8f -> :sswitch_6
        0x9b -> :sswitch_8
    .end sparse-switch

    .line 1729
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_13
        0x3c -> :sswitch_14
        0x41 -> :sswitch_15
        0x42 -> :sswitch_15
    .end sparse-switch

    .line 1760
    :sswitch_data_3
    .sparse-switch
        0x30 -> :sswitch_16
        0x3c -> :sswitch_17
        0x41 -> :sswitch_17
        0x42 -> :sswitch_17
    .end sparse-switch

    .line 1849
    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1862
    :sswitch_data_4
    .sparse-switch
        0x20 -> :sswitch_18
        0x23 -> :sswitch_19
        0x28 -> :sswitch_2f
        0x29 -> :sswitch_30
        0x2a -> :sswitch_31
        0x2b -> :sswitch_32
        0x37 -> :sswitch_2d
        0x38 -> :sswitch_2e
        0x3c -> :sswitch_2b
        0x3d -> :sswitch_2a
        0x3e -> :sswitch_2c
        0x41 -> :sswitch_1e
        0x42 -> :sswitch_1f
        0x43 -> :sswitch_20
        0x44 -> :sswitch_23
        0x45 -> :sswitch_22
        0x48 -> :sswitch_27
        0x49 -> :sswitch_21
        0x4a -> :sswitch_24
        0x4b -> :sswitch_25
        0x4d -> :sswitch_26
        0x4e -> :sswitch_28
        0x4f -> :sswitch_29
        0x50 -> :sswitch_1d
        0x59 -> :sswitch_38
        0x5b -> :sswitch_1b
        0x5c -> :sswitch_3a
        0x5d -> :sswitch_1c
        0x5f -> :sswitch_39
        0x63 -> :sswitch_1a
        0x6e -> :sswitch_34
        0x6f -> :sswitch_36
        0x7c -> :sswitch_37
        0x7d -> :sswitch_35
        0x7e -> :sswitch_33
    .end sparse-switch

    .line 2096
    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_e
    .end packed-switch

    .line 2119
    :sswitch_data_5
    .sparse-switch
        0x30 -> :sswitch_3b
        0x31 -> :sswitch_3b
        0x32 -> :sswitch_3b
        0x33 -> :sswitch_3b
        0x34 -> :sswitch_3b
        0x35 -> :sswitch_3b
        0x36 -> :sswitch_3b
        0x37 -> :sswitch_3b
        0x38 -> :sswitch_3b
        0x39 -> :sswitch_3b
        0x3b -> :sswitch_3c
        0x68 -> :sswitch_44
        0x69 -> :sswitch_4c
        0x6c -> :sswitch_4d
        0x6e -> :sswitch_55
        0x72 -> :sswitch_3e
        0x73 -> :sswitch_3d
    .end sparse-switch

    .line 2147
    :sswitch_data_6
    .sparse-switch
        0x3 -> :sswitch_40
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_3f
        0x6 -> :sswitch_41
        0x7 -> :sswitch_42
        0x9 -> :sswitch_43
        0xc -> :sswitch_3f
        0x3e8 -> :sswitch_43
        0x3e9 -> :sswitch_43
        0x3ea -> :sswitch_43
        0x3eb -> :sswitch_43
    .end sparse-switch

    .line 2180
    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_45
        0x2 -> :sswitch_46
        0x3 -> :sswitch_47
        0x6 -> :sswitch_48
        0x7 -> :sswitch_49
        0x9 -> :sswitch_4b
        0x19 -> :sswitch_4a
        0x3e8 -> :sswitch_4b
        0x3e9 -> :sswitch_4b
        0x3ea -> :sswitch_4b
        0x3eb -> :sswitch_4b
    .end sparse-switch

    .line 2227
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
        :pswitch_11
        :pswitch_11
        :pswitch_0
    .end packed-switch

    .line 2247
    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_4e
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_50
        0x6 -> :sswitch_51
        0x7 -> :sswitch_52
        0x9 -> :sswitch_54
        0x19 -> :sswitch_53
        0x3e8 -> :sswitch_54
        0x3e9 -> :sswitch_54
        0x3ea -> :sswitch_54
        0x3eb -> :sswitch_54
    .end sparse-switch

    .line 2292
    :pswitch_data_4
    .packed-switch 0xf
        :pswitch_12
    .end packed-switch

    .line 2310
    :pswitch_data_5
    .packed-switch 0x1b
        :pswitch_14
    .end packed-switch

    .line 2321
    :pswitch_data_6
    .packed-switch 0x70
        :pswitch_16
    .end packed-switch

    .line 2341
    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_1a
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 2403
    :pswitch_data_8
    .packed-switch 0x7d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 2423
    :pswitch_data_9
    .packed-switch 0x21
        :pswitch_25
        :pswitch_22
        :pswitch_21
        :pswitch_23
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_21
        :pswitch_28
        :pswitch_21
        :pswitch_24
        :pswitch_21
        :pswitch_26
        :pswitch_48
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_36
        :pswitch_21
        :pswitch_21
        :pswitch_38
        :pswitch_39
        :pswitch_21
        :pswitch_44
        :pswitch_3f
        :pswitch_3c
        :pswitch_3e
        :pswitch_21
        :pswitch_21
        :pswitch_4a
        :pswitch_21
        :pswitch_21
        :pswitch_3b
        :pswitch_3d
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_49
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_29
        :pswitch_35
        :pswitch_21
        :pswitch_3a
        :pswitch_2a
        :pswitch_2e
        :pswitch_2f
        :pswitch_21
        :pswitch_21
        :pswitch_31
        :pswitch_50
        :pswitch_4b
        :pswitch_21
        :pswitch_21
        :pswitch_0
        :pswitch_37
        :pswitch_4e
        :pswitch_21
        :pswitch_4f
    .end packed-switch

    .line 2476
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2b
        :pswitch_2b
        :pswitch_2d
    .end packed-switch

    .line 2488
    :sswitch_data_9
    .sparse-switch
        0x4 -> :sswitch_56
        0x14 -> :sswitch_57
    .end sparse-switch

    .line 2510
    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2528
    :sswitch_data_a
    .sparse-switch
        0x4 -> :sswitch_58
        0x14 -> :sswitch_59
    .end sparse-switch

    .line 2698
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_41
    .end packed-switch

    .line 2715
    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_45
        :pswitch_46
        :pswitch_47
    .end packed-switch

    .line 2762
    :pswitch_data_e
    .packed-switch 0x5
        :pswitch_4c
        :pswitch_4d
    .end packed-switch

    .line 2802
    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_52
        :pswitch_51
        :pswitch_58
        :pswitch_59
        :pswitch_51
        :pswitch_5a
        :pswitch_5b
        :pswitch_5b
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_5c
        :pswitch_61
        :pswitch_5d
        :pswitch_60
        :pswitch_52
        :pswitch_51
        :pswitch_5e
        :pswitch_5f
        :pswitch_51
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_68
        :pswitch_51
        :pswitch_51
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
        :pswitch_69
    .end packed-switch

    .line 2982
    :pswitch_data_10
    .packed-switch 0x1b
        :pswitch_6b
    .end packed-switch
.end method

.method static unEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "tmp"

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 784
    const/4 v3, 0x0

    .local v3, idx:I
    const/4 v5, 0x0

    .line 787
    .local v5, oldidx:I
    const-string v0, ""

    .line 788
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x5c

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    .line 789
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_2

    .line 828
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 829
    .end local v0           #cmd:Ljava/lang/String;
    .local v1, cmd:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 790
    .end local v1           #cmd:Ljava/lang/String;
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_3

    move-object v1, v0

    .end local v0           #cmd:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    goto :goto_1

    .line 792
    .end local v1           #cmd:Ljava/lang/String;
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 815
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v9, :cond_6

    .line 817
    move v2, v3

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 820
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    add-int/lit8 v3, v2, -0x1

    .line 826
    .end local v2           #i:I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 794
    :sswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u0008"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    goto :goto_3

    .line 797
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u001b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    goto :goto_3

    .line 800
    :sswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 801
    goto :goto_3

    .line 803
    :sswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    goto :goto_3

    .line 806
    :sswitch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    goto :goto_3

    .line 809
    :sswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u000b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    goto :goto_3

    .line 812
    :sswitch_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\u0012"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    goto/16 :goto_3

    .line 818
    .restart local v2       #i:I
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v8, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v9, :cond_4

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 823
    .end local v2           #i:I
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    .end local v3           #idx:I
    .local v4, idx:I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v3, v4

    .end local v4           #idx:I
    .restart local v3       #idx:I
    goto/16 :goto_3

    .line 792
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_6
        0x62 -> :sswitch_0
        0x65 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x76 -> :sswitch_5
    .end sparse-switch
.end method

.method private write(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "s"
    .parameter "doecho"

    .prologue
    const/4 v3, 0x1

    .line 545
    if-nez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v3

    .line 553
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [B

    .line 554
    .local v0, arr:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 557
    invoke-virtual {p0, v0}, Lde/mud/terminal/vt320;->write([B)V

    .line 559
    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {p0, p1}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private writeSpecial(Ljava/lang/String;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x1b

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 839
    if-nez p1, :cond_0

    .line 859
    :goto_0
    return v0

    .line 841
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4f

    if-ne v1, v2, :cond_1

    .line 842
    iget-boolean v1, p0, Lde/mud/terminal/vt320;->vt52mode:Z

    if-eqz v1, :cond_4

    .line 843
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-lt v1, v2, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x53

    if-gt v1, v2, :cond_3

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u001b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 854
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 855
    iget-boolean v0, p0, Lde/mud/terminal/vt320;->output8bit:Z

    if-eqz v0, :cond_2

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u009b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 859
    :cond_2
    invoke-direct {p0, p1, v4}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 846
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u001b?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 849
    :cond_4
    iget-boolean v1, p0, Lde/mud/terminal/vt320;->output8bit:Z

    if-eqz v1, :cond_1

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u008f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public beep()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public abstract debug(Ljava/lang/String;)V
.end method

.method public keyPressed(ICI)V
    .locals 8
    .parameter "keyCode"
    .parameter "keyChar"
    .parameter "modifiers"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 866
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_4

    move v1, v5

    .line 867
    .local v1, control:Z
    :goto_0
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_5

    move v3, v5

    .line 868
    .local v3, shift:Z
    :goto_1
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_6

    move v0, v5

    .line 884
    .local v0, alt:Z
    :goto_2
    const/4 v4, 0x0

    .line 885
    .local v4, xind:I
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    .line 886
    .local v2, fmap:[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 887
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyShift:[Ljava/lang/String;

    .line 888
    const/4 v4, 0x1

    .line 890
    :cond_0
    if-eqz v1, :cond_1

    .line 891
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyCtrl:[Ljava/lang/String;

    .line 892
    const/4 v4, 0x2

    .line 894
    :cond_1
    if-eqz v0, :cond_2

    .line 895
    iget-object v2, p0, Lde/mud/terminal/vt320;->FunctionKeyAlt:[Ljava/lang/String;

    .line 896
    const/4 v4, 0x3

    .line 899
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 997
    :cond_3
    :goto_3
    :pswitch_0
    return-void

    .end local v0           #alt:Z
    .end local v1           #control:Z
    .end local v2           #fmap:[Ljava/lang/String;
    .end local v3           #shift:Z
    .end local v4           #xind:I
    :cond_4
    move v1, v6

    .line 866
    goto :goto_0

    .restart local v1       #control:Z
    :cond_5
    move v3, v6

    .line 867
    goto :goto_1

    .restart local v3       #shift:Z
    :cond_6
    move v0, v6

    .line 868
    goto :goto_2

    .line 901
    .restart local v0       #alt:Z
    .restart local v2       #fmap:[Ljava/lang/String;
    .restart local v4       #xind:I
    :pswitch_1
    if-nez v3, :cond_7

    if-eqz v1, :cond_3

    .line 902
    :cond_7
    const/16 v5, -0xd

    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->sendTelnetCommand(B)V

    goto :goto_3

    .line 905
    :pswitch_2
    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 908
    :pswitch_3
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 911
    :pswitch_4
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 914
    :pswitch_5
    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 917
    :pswitch_6
    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 920
    :pswitch_7
    const/4 v5, 0x6

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 923
    :pswitch_8
    const/4 v5, 0x7

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 926
    :pswitch_9
    const/16 v5, 0x8

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 929
    :pswitch_a
    const/16 v5, 0x9

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 932
    :pswitch_b
    const/16 v5, 0xa

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 935
    :pswitch_c
    const/16 v5, 0xb

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 938
    :pswitch_d
    const/16 v5, 0xc

    aget-object v5, v2, v5

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 941
    :pswitch_e
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyUp:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 944
    :pswitch_f
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyDown:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 947
    :pswitch_10
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyLeft:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 950
    :pswitch_11
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyRight:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 953
    :pswitch_12
    iget-object v5, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 956
    :pswitch_13
    iget-object v5, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 959
    :pswitch_14
    iget-object v5, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 962
    :pswitch_15
    iget-object v5, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 965
    :pswitch_16
    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    .line 966
    iget-boolean v5, p0, Lde/mud/terminal/vt320;->localecho:Z

    if-eqz v5, :cond_3

    .line 967
    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    aget-object v5, v5, v4

    const-string v6, "\u0008"

    if-ne v5, v6, :cond_8

    .line 968
    const-string v5, "\u0008 \u0008"

    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 970
    :cond_8
    iget-object v5, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 975
    :pswitch_17
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyHome:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 978
    :pswitch_18
    iget-object v5, p0, Lde/mud/terminal/vt320;->KeyEnd:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 981
    :pswitch_19
    iget-boolean v7, p0, Lde/mud/terminal/vt320;->vms:Z

    if-eqz v7, :cond_9

    if-eqz v1, :cond_9

    .line 982
    iget-object v7, p0, Lde/mud/terminal/vt320;->PF1:Ljava/lang/String;

    invoke-direct {p0, v7}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    .line 984
    :cond_9
    if-nez v1, :cond_3

    .line 985
    iget-boolean v7, p0, Lde/mud/terminal/vt320;->numlock:Z

    if-eqz v7, :cond_a

    :goto_4
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->numlock:Z

    goto/16 :goto_3

    :cond_a
    move v6, v5

    goto :goto_4

    .line 988
    :pswitch_1a
    iget-boolean v7, p0, Lde/mud/terminal/vt320;->capslock:Z

    if-eqz v7, :cond_b

    :goto_5
    iput-boolean v6, p0, Lde/mud/terminal/vt320;->capslock:Z

    goto/16 :goto_3

    :cond_b
    move v6, v5

    goto :goto_5

    .line 899
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public keyTyped(ICI)V
    .locals 10
    .parameter "keyCode"
    .parameter "keyChar"
    .parameter "modifiers"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1009
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_1

    move v1, v4

    .line 1010
    .local v1, control:Z
    :goto_0
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_2

    move v2, v4

    .line 1011
    .local v2, shift:Z
    :goto_1
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_3

    move v0, v4

    .line 1015
    .local v0, alt:Z
    :goto_2
    const/16 v6, 0x9

    if-ne p2, v6, :cond_7

    .line 1016
    if-eqz v2, :cond_4

    .line 1017
    iget-object v6, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-direct {p0, v4, v5}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    .line 1194
    :cond_0
    :goto_3
    return-void

    .end local v0           #alt:Z
    .end local v1           #control:Z
    .end local v2           #shift:Z
    :cond_1
    move v1, v5

    .line 1009
    goto :goto_0

    .restart local v1       #control:Z
    :cond_2
    move v2, v5

    .line 1010
    goto :goto_1

    .restart local v2       #shift:Z
    :cond_3
    move v0, v5

    .line 1011
    goto :goto_2

    .line 1019
    .restart local v0       #alt:Z
    :cond_4
    if-eqz v1, :cond_5

    .line 1020
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v4, v5}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 1022
    :cond_5
    if-eqz v0, :cond_6

    .line 1023
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v4, v5}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 1025
    :cond_6
    iget-object v4, p0, Lde/mud/terminal/vt320;->TabKey:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4, v5}, Lde/mud/terminal/vt320;->write(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 1031
    :cond_7
    if-eqz v0, :cond_8

    .line 1032
    or-int/lit16 v4, p2, 0x80

    int-to-char v4, v4

    invoke-virtual {p0, v4}, Lde/mud/terminal/vt320;->write(I)V

    goto :goto_3

    .line 1036
    :cond_8
    const/16 v6, 0x1e

    if-eq p1, v6, :cond_9

    const/16 v6, 0xa

    if-ne p2, v6, :cond_a

    .line 1037
    :cond_9
    if-nez v1, :cond_a

    .line 1038
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lde/mud/terminal/vt320;->write(I)V

    .line 1039
    iget-boolean v4, p0, Lde/mud/terminal/vt320;->localecho:Z

    if-eqz v4, :cond_0

    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    goto :goto_3

    .line 1043
    :cond_a
    const/16 v6, 0xa

    if-ne p1, v6, :cond_b

    if-nez v1, :cond_b

    .line 1044
    const-string v4, "Sending \\r"

    invoke-virtual {p0, v4}, Lde/mud/terminal/vt320;->debug(Ljava/lang/String;)V

    .line 1045
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lde/mud/terminal/vt320;->write(I)V

    goto :goto_3

    .line 1054
    :cond_b
    iget-boolean v6, p0, Lde/mud/terminal/vt320;->vms:Z

    if-nez v6, :cond_c

    const/16 v6, 0x32

    if-eq p2, v6, :cond_d

    :cond_c
    const/16 v6, 0x20

    if-ne p2, v6, :cond_e

    :cond_d
    if-eqz v1, :cond_e

    .line 1055
    invoke-virtual {p0, v5}, Lde/mud/terminal/vt320;->write(I)V

    .line 1057
    :cond_e
    iget-boolean v6, p0, Lde/mud/terminal/vt320;->vms:Z

    if-eqz v6, :cond_11

    .line 1058
    const/16 v6, 0x7f

    if-ne p2, v6, :cond_10

    if-nez v1, :cond_10

    .line 1059
    if-eqz v2, :cond_f

    .line 1060
    iget-object v4, p0, Lde/mud/terminal/vt320;->Insert:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto :goto_3

    .line 1062
    :cond_f
    iget-object v4, p0, Lde/mud/terminal/vt320;->Remove:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1064
    :cond_10
    if-eqz v1, :cond_11

    .line 1065
    sparse-switch p2, :sswitch_data_0

    .line 1130
    :cond_11
    const/4 v3, 0x0

    .line 1132
    .local v3, xind:I
    if-eqz v2, :cond_12

    .line 1134
    const/4 v3, 0x1

    .line 1136
    :cond_12
    if-eqz v1, :cond_13

    .line 1138
    const/4 v3, 0x2

    .line 1140
    :cond_13
    if-eqz v0, :cond_14

    .line 1142
    const/4 v3, 0x3

    .line 1145
    :cond_14
    const/16 v6, 0x2b

    if-ne p1, v6, :cond_15

    .line 1146
    iget-object v4, p0, Lde/mud/terminal/vt320;->Escape:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1067
    .end local v3           #xind:I
    :sswitch_0
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1070
    :sswitch_1
    iget-object v5, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1073
    :sswitch_2
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1076
    :sswitch_3
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1079
    :sswitch_4
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1082
    :sswitch_5
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1085
    :sswitch_6
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1088
    :sswitch_7
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1091
    :sswitch_8
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1094
    :sswitch_9
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1097
    :sswitch_a
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPPeriod:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1101
    :sswitch_b
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPMinus:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1104
    :sswitch_c
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPComma:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1107
    :sswitch_d
    iget-object v4, p0, Lde/mud/terminal/vt320;->KPEnter:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1110
    :sswitch_e
    iget-object v4, p0, Lde/mud/terminal/vt320;->PF2:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1113
    :sswitch_f
    iget-object v4, p0, Lde/mud/terminal/vt320;->PF3:Ljava/lang/String;

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1150
    .restart local v3       #xind:I
    :cond_15
    and-int/lit8 v6, p3, 0x8

    if-eqz v6, :cond_16

    .line 1151
    packed-switch p1, :pswitch_data_0

    .line 1190
    :cond_16
    if-eq p2, v9, :cond_0

    const/16 v4, 0x7f

    if-eq p2, v4, :cond_0

    const/16 v4, 0xd

    if-eq p2, v4, :cond_0

    const/16 v4, 0xa

    if-eq p2, v4, :cond_0

    .line 1191
    invoke-virtual {p0, p2}, Lde/mud/terminal/vt320;->write(I)V

    goto/16 :goto_3

    .line 1153
    :pswitch_0
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1156
    :pswitch_1
    iget-object v5, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1159
    :pswitch_2
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1162
    :pswitch_3
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1165
    :pswitch_4
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1168
    :pswitch_5
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1171
    :pswitch_6
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1174
    :pswitch_7
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1177
    :pswitch_8
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1180
    :pswitch_9
    iget-object v4, p0, Lde/mud/terminal/vt320;->Numpad:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1183
    :pswitch_a
    iget-object v4, p0, Lde/mud/terminal/vt320;->NUMDot:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1186
    :pswitch_b
    iget-object v4, p0, Lde/mud/terminal/vt320;->NUMPlus:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lde/mud/terminal/vt320;->writeSpecial(Ljava/lang/String;)Z

    goto/16 :goto_3

    .line 1065
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_d
        0x1f -> :sswitch_b
        0x2a -> :sswitch_f
        0x2b -> :sswitch_c
        0x2d -> :sswitch_b
        0x2e -> :sswitch_a
        0x2f -> :sswitch_e
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
    .end sparse-switch

    .line 1151
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public map_cp850_unicode(C)C
    .locals 1
    .parameter "x"

    .prologue
    .line 1507
    const/16 v0, 0x100

    if-lt p1, v0, :cond_0

    .line 1509
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    sget-object v0, Lde/mud/terminal/vt320;->unimap:[C

    aget-char p1, v0, p1

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, len:I
    new-array v1, v0, [C

    .line 79
    .local v1, tmp:[C
    invoke-virtual {p1, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lde/mud/terminal/vt320;->putString([C[BII)V

    .line 81
    return-void
.end method

.method public putString([C[BII)V
    .locals 10
    .parameter "s"
    .parameter "fullwidths"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 91
    if-lez p4, :cond_1

    .line 93
    const/4 v3, -0x1

    .line 95
    .local v3, lastChar:I
    const/4 v2, 0x0

    .line 97
    .local v2, isWide:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p4, :cond_2

    .line 125
    if-eq v3, v9, :cond_0

    .line 126
    int-to-char v7, v3

    invoke-direct {p0, v7, v2, v6}, Lde/mud/terminal/vt320;->putChar(CZZ)V

    .line 128
    :cond_0
    iget v6, p0, Lde/mud/terminal/vt320;->C:I

    iget v7, p0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual {p0, v6, v7}, Lde/mud/terminal/vt320;->setCursorPosition(II)V

    .line 129
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->redraw()V

    .line 131
    .end local v1           #i:I
    .end local v2           #isWide:Z
    .end local v3           #lastChar:I
    :cond_1
    return-void

    .line 98
    .restart local v1       #i:I
    .restart local v2       #isWide:Z
    .restart local v3       #lastChar:I
    :cond_2
    add-int v7, p3, v1

    aget-char v0, p1, v7

    .line 100
    .local v0, c:C
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_5

    .line 101
    if-eq v3, v9, :cond_3

    .line 102
    int-to-char v7, v3

    invoke-direct {p0, v7, v2, v6}, Lde/mud/terminal/vt320;->putChar(CZZ)V

    .line 103
    :cond_3
    move v3, v0

    .line 104
    const/4 v2, 0x0

    .line 97
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_4

    .line 106
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 107
    if-eq v3, v9, :cond_4

    .line 108
    int-to-char v7, v3

    invoke-static {v7, v0}, Lde/mud/terminal/Precomposer;->precompose(CC)C

    move-result v4

    .line 109
    .local v4, nc:C
    invoke-direct {p0, v4, v2, v6}, Lde/mud/terminal/vt320;->putChar(CZZ)V

    .line 110
    const/4 v3, -0x1

    goto :goto_1

    .line 113
    .end local v4           #nc:C
    :cond_6
    if-eq v3, v9, :cond_7

    .line 114
    int-to-char v7, v3

    invoke-direct {p0, v7, v2, v6}, Lde/mud/terminal/vt320;->putChar(CZZ)V

    .line 115
    :cond_7
    move v3, v0

    .line 116
    if-eqz p2, :cond_4

    .line 117
    aget-byte v5, p2, v1

    .line 118
    .local v5, width:B
    const/4 v7, 0x5

    if-eq v5, v7, :cond_8

    .line 119
    const/4 v7, 0x3

    if-eq v5, v7, :cond_8

    move v2, v6

    .line 118
    :goto_2
    goto :goto_1

    .line 119
    :cond_8
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/16 v3, 0x42

    const/4 v1, 0x0

    .line 3001
    iget-object v0, p0, Lde/mud/terminal/vt320;->gx:[C

    aput-char v3, v0, v1

    .line 3002
    iget-object v0, p0, Lde/mud/terminal/vt320;->gx:[C

    aput-char v3, v0, v8

    .line 3003
    iget-object v0, p0, Lde/mud/terminal/vt320;->gx:[C

    aput-char v3, v0, v4

    .line 3004
    iget-object v0, p0, Lde/mud/terminal/vt320;->gx:[C

    const/4 v2, 0x3

    aput-char v3, v0, v2

    .line 3006
    iput-char v1, p0, Lde/mud/terminal/vt320;->gl:C

    .line 3007
    iput-char v4, p0, Lde/mud/terminal/vt320;->gr:C

    .line 3009
    const/4 v0, -0x1

    iput v0, p0, Lde/mud/terminal/vt320;->onegl:I

    .line 3012
    iget v7, p0, Lde/mud/terminal/vt320;->width:I

    .line 3013
    .local v7, nw:I
    const/16 v0, 0x84

    if-ge v7, v0, :cond_0

    const/16 v7, 0x84

    .line 3014
    :cond_0
    new-array v0, v7, [B

    iput-object v0, p0, Lde/mud/terminal/vt320;->Tabs:[B

    .line 3015
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v7, :cond_2

    .line 3019
    iget v3, p0, Lde/mud/terminal/vt320;->width:I

    iget v4, p0, Lde/mud/terminal/vt320;->height:I

    iget v5, p0, Lde/mud/terminal/vt320;->attributes:I

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lde/mud/terminal/vt320;->deleteArea(IIIII)V

    .line 3020
    iget v0, p0, Lde/mud/terminal/vt320;->height:I

    invoke-virtual {p0, v1, v0}, Lde/mud/terminal/vt320;->setMargins(II)V

    .line 3021
    iput v1, p0, Lde/mud/terminal/vt320;->R:I

    iput v1, p0, Lde/mud/terminal/vt320;->C:I

    .line 3022
    invoke-direct {p0, v1, v1}, Lde/mud/terminal/vt320;->_SetCursor(II)V

    .line 3024
    iget-object v0, p0, Lde/mud/terminal/vt320;->display:Lde/mud/terminal/VDUDisplay;

    if-eqz v0, :cond_1

    .line 3025
    iget-object v0, p0, Lde/mud/terminal/vt320;->display:Lde/mud/terminal/VDUDisplay;

    invoke-interface {v0}, Lde/mud/terminal/VDUDisplay;->resetColors()V

    .line 3027
    :cond_1
    invoke-virtual {p0, v8}, Lde/mud/terminal/vt320;->showCursor(Z)V

    .line 3029
    iput v1, p0, Lde/mud/terminal/vt320;->term_state:I

    .line 3030
    return-void

    .line 3016
    :cond_2
    iget-object v0, p0, Lde/mud/terminal/vt320;->Tabs:[B

    aput-byte v8, v0, v6

    .line 3015
    add-int/lit8 v6, v6, 0x8

    goto :goto_0
.end method

.method protected sendTelnetCommand(B)V
    .locals 0
    .parameter "cmd"

    .prologue
    .line 135
    return-void
.end method

.method public setAnswerBack(Ljava/lang/String;)V
    .locals 1
    .parameter "ab"

    .prologue
    .line 521
    invoke-static {p1}, Lde/mud/terminal/vt320;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/mud/terminal/vt320;->answerBack:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setBackspace(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 330
    :goto_0
    return-void

    .line 322
    :pswitch_0
    iget-object v0, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v1, "\u007f"

    aput-object v1, v0, v2

    .line 323
    iget-object v0, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v1, "\u0008"

    aput-object v1, v0, v3

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v1, "\u0008"

    aput-object v1, v0, v2

    .line 327
    iget-object v0, p0, Lde/mud/terminal/vt320;->BackSpace:[Ljava/lang/String;

    const-string v1, "\u007f"

    aput-object v1, v0, v3

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIBMCharset(Z)V
    .locals 0
    .parameter "ibm"

    .prologue
    .line 437
    iput-boolean p1, p0, Lde/mud/terminal/vt320;->useibmcharset:Z

    .line 438
    return-void
.end method

.method public setScreenSize(IIZ)V
    .locals 4
    .parameter "c"
    .parameter "r"
    .parameter "broadcast"

    .prologue
    .line 146
    iget v1, p0, Lde/mud/terminal/vt320;->height:I

    .line 163
    .local v1, oldrows:I
    const/4 v2, 0x0

    invoke-super {p0, p1, p2, v2}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, cursorChanged:Z
    iget v2, p0, Lde/mud/terminal/vt320;->C:I

    if-lt v2, p1, :cond_0

    .line 169
    add-int/lit8 v2, p1, -0x1

    iput v2, p0, Lde/mud/terminal/vt320;->C:I

    .line 170
    const/4 v0, 0x1

    .line 173
    :cond_0
    iget v2, p0, Lde/mud/terminal/vt320;->R:I

    if-lt v2, p2, :cond_1

    .line 174
    add-int/lit8 v2, p2, -0x1

    iput v2, p0, Lde/mud/terminal/vt320;->R:I

    .line 175
    const/4 v0, 0x1

    .line 178
    :cond_1
    if-eqz v0, :cond_2

    .line 179
    iget v2, p0, Lde/mud/terminal/vt320;->C:I

    iget v3, p0, Lde/mud/terminal/vt320;->R:I

    invoke-virtual {p0, v2, v3}, Lde/mud/terminal/vt320;->setCursorPosition(II)V

    .line 180
    invoke-virtual {p0}, Lde/mud/terminal/vt320;->redraw()V

    .line 183
    :cond_2
    if-eqz p3, :cond_3

    .line 184
    invoke-virtual {p0, p1, p2}, Lde/mud/terminal/vt320;->setWindowSize(II)V

    .line 186
    :cond_3
    return-void
.end method

.method public setTerminalID(Ljava/lang/String;)V
    .locals 9
    .parameter "terminalID"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 501
    iput-object p1, p0, Lde/mud/terminal/vt320;->terminalID:Ljava/lang/String;

    .line 503
    const-string v0, "scoansi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v1, "\u001b[M"

    aput-object v1, v0, v5

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v1, "\u001b[N"

    aput-object v1, v0, v6

    .line 505
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const-string v1, "\u001b[O"

    aput-object v1, v0, v7

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "\u001b[P"

    aput-object v2, v0, v1

    .line 506
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "\u001b[Q"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "\u001b[R"

    aput-object v2, v0, v1

    .line 507
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "\u001b[S"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\u001b[T"

    aput-object v2, v0, v1

    .line 508
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\u001b[U"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\u001b[V"

    aput-object v2, v0, v1

    .line 509
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "\u001b[W"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\u001b[X"

    aput-object v2, v0, v1

    .line 510
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\u001b[Y"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "?"

    aput-object v2, v0, v1

    .line 511
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "\u001b[a"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "\u001b[b"

    aput-object v2, v0, v1

    .line 512
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "\u001b[c"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "\u001b[d"

    aput-object v2, v0, v1

    .line 513
    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "\u001b[e"

    aput-object v2, v0, v1

    iget-object v0, p0, Lde/mud/terminal/vt320;->FunctionKey:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "\u001b[f"

    aput-object v2, v0, v1

    .line 514
    iget-object v0, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v1, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->PrevScn:[Ljava/lang/String;

    const-string v4, "\u001b[I"

    aput-object v4, v3, v7

    aput-object v4, v2, v6

    aput-object v4, v1, v5

    aput-object v4, v0, v8

    .line 515
    iget-object v0, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v1, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v2, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    iget-object v3, p0, Lde/mud/terminal/vt320;->NextScn:[Ljava/lang/String;

    const-string v4, "\u001b[G"

    aput-object v4, v3, v7

    aput-object v4, v2, v6

    aput-object v4, v1, v5

    aput-object v4, v0, v8

    .line 518
    :cond_0
    return-void
.end method

.method public setVMS(Z)V
    .locals 0
    .parameter "vms"

    .prologue
    .line 428
    iput-boolean p1, p0, Lde/mud/terminal/vt320;->vms:Z

    .line 429
    return-void
.end method

.method protected setWindowSize(II)V
    .locals 0
    .parameter "c"
    .parameter "r"

    .prologue
    .line 142
    return-void
.end method

.method public abstract write(I)V
.end method

.method public abstract write([B)V
.end method
