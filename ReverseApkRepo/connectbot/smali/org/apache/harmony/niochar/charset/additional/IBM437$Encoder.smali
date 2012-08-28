.class final Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "IBM437.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/niochar/charset/additional/IBM437;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Encoder"
.end annotation


# static fields
.field static final arr:[C

.field static final encodeIndex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 290
    const/16 v0, 0x700

    new-array v0, v0, [C

    .line 292
    aput-char v4, v0, v4

    aput-char v5, v0, v5

    aput-char v6, v0, v6

    aput-char v7, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/16 v1, 0x10

    .line 293
    const/16 v2, 0x10

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x18

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x19

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x7f

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    aput-char v2, v0, v1

    const/16 v1, 0x20

    .line 294
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x23

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x25

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x30

    .line 295
    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x3e

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x40

    .line 296
    const/16 v2, 0x40

    aput-char v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x4f

    aput-char v2, v0, v1

    const/16 v1, 0x50

    .line 297
    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x55

    aput-char v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x5e

    aput-char v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x60

    .line 298
    const/16 v2, 0x60

    aput-char v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0x70

    .line 299
    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x75

    aput-char v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x7e

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x1c

    aput-char v2, v0, v1

    const/16 v1, 0xa0

    .line 302
    const/16 v2, 0xff

    aput-char v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0xad

    aput-char v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x9b

    aput-char v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x9c

    aput-char v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x9d

    aput-char v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0xa6

    aput-char v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xae

    aput-char v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0xaa

    aput-char v2, v0, v1

    const/16 v1, 0xb0

    .line 303
    const/16 v2, 0xf8

    aput-char v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0xf1

    aput-char v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0xfd

    aput-char v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0xfa

    aput-char v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0xa7

    aput-char v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0xaf

    aput-char v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0xac

    aput-char v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0xab

    aput-char v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xa8

    aput-char v2, v0, v1

    const/16 v1, 0xc4

    .line 304
    const/16 v2, 0x8e

    aput-char v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x8f

    aput-char v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0x92

    aput-char v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x80

    aput-char v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x90

    aput-char v2, v0, v1

    const/16 v1, 0xd1

    .line 305
    const/16 v2, 0xa5

    aput-char v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x99

    aput-char v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x9a

    aput-char v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0xe1

    aput-char v2, v0, v1

    const/16 v1, 0xe0

    .line 306
    const/16 v2, 0x85

    aput-char v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0xa0

    aput-char v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x83

    aput-char v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x84

    aput-char v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x86

    aput-char v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x91

    aput-char v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x87

    aput-char v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x8a

    aput-char v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x82

    aput-char v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x88

    aput-char v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x89

    aput-char v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x8d

    aput-char v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0xa1

    aput-char v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x8c

    aput-char v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x8b

    aput-char v2, v0, v1

    const/16 v1, 0xf1

    .line 307
    const/16 v2, 0xa4

    aput-char v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x95

    aput-char v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0xa2

    aput-char v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x93

    aput-char v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x94

    aput-char v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xf6

    aput-char v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x97

    aput-char v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0xa3

    aput-char v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x96

    aput-char v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x81

    aput-char v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x98

    aput-char v2, v0, v1

    const/16 v1, 0x192

    .line 318
    const/16 v2, 0x9f

    aput-char v2, v0, v1

    const/16 v1, 0x293

    .line 335
    const/16 v2, 0xe2

    aput-char v2, v0, v1

    const/16 v1, 0x298

    const/16 v2, 0xe9

    aput-char v2, v0, v1

    const/16 v1, 0x2a3

    .line 336
    const/16 v2, 0xe4

    aput-char v2, v0, v1

    const/16 v1, 0x2a6

    const/16 v2, 0xe8

    aput-char v2, v0, v1

    const/16 v1, 0x2a9

    const/16 v2, 0xea

    aput-char v2, v0, v1

    const/16 v1, 0x2b1

    .line 337
    const/16 v2, 0xe0

    aput-char v2, v0, v1

    const/16 v1, 0x2b4

    const/16 v2, 0xeb

    aput-char v2, v0, v1

    const/16 v1, 0x2b5

    const/16 v2, 0xee

    aput-char v2, v0, v1

    const/16 v1, 0x2bc

    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x2c0

    .line 338
    const/16 v2, 0xe3

    aput-char v2, v0, v1

    const/16 v1, 0x2c3

    const/16 v2, 0xe5

    aput-char v2, v0, v1

    const/16 v1, 0x2c4

    const/16 v2, 0xe7

    aput-char v2, v0, v1

    const/16 v1, 0x2c6

    const/16 v2, 0xed

    aput-char v2, v0, v1

    const/16 v1, 0x37f

    .line 350
    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x3a7

    .line 353
    const/16 v2, 0x9e

    aput-char v2, v0, v1

    const/16 v1, 0x419

    .line 361
    const/16 v2, 0xf9

    aput-char v2, v0, v1

    const/16 v1, 0x41a

    const/16 v2, 0xfb

    aput-char v2, v0, v1

    const/16 v1, 0x41e

    const/16 v2, 0xec

    aput-char v2, v0, v1

    const/16 v1, 0x429

    .line 362
    const/16 v2, 0xef

    aput-char v2, v0, v1

    const/16 v1, 0x448

    .line 364
    const/16 v2, 0xf7

    aput-char v2, v0, v1

    const/16 v1, 0x461

    .line 366
    const/16 v2, 0xf0

    aput-char v2, v0, v1

    const/16 v1, 0x464

    const/16 v2, 0xf3

    aput-char v2, v0, v1

    const/16 v1, 0x465

    const/16 v2, 0xf2

    aput-char v2, v0, v1

    const/16 v1, 0x510

    .line 378
    const/16 v2, 0xa9

    aput-char v2, v0, v1

    const/16 v1, 0x520

    .line 379
    const/16 v2, 0xf4

    aput-char v2, v0, v1

    const/16 v1, 0x521

    const/16 v2, 0xf5

    aput-char v2, v0, v1

    const/16 v1, 0x600

    .line 394
    const/16 v2, 0xc4

    aput-char v2, v0, v1

    const/16 v1, 0x602

    const/16 v2, 0xb3

    aput-char v2, v0, v1

    const/16 v1, 0x60c

    const/16 v2, 0xda

    aput-char v2, v0, v1

    const/16 v1, 0x610

    .line 395
    const/16 v2, 0xbf

    aput-char v2, v0, v1

    const/16 v1, 0x614

    const/16 v2, 0xc0

    aput-char v2, v0, v1

    const/16 v1, 0x618

    const/16 v2, 0xd9

    aput-char v2, v0, v1

    const/16 v1, 0x61c

    const/16 v2, 0xc3

    aput-char v2, v0, v1

    const/16 v1, 0x624

    .line 396
    const/16 v2, 0xb4

    aput-char v2, v0, v1

    const/16 v1, 0x62c

    const/16 v2, 0xc2

    aput-char v2, v0, v1

    const/16 v1, 0x634

    .line 397
    const/16 v2, 0xc1

    aput-char v2, v0, v1

    const/16 v1, 0x63c

    const/16 v2, 0xc5

    aput-char v2, v0, v1

    const/16 v1, 0x650

    .line 399
    const/16 v2, 0xcd

    aput-char v2, v0, v1

    const/16 v1, 0x651

    const/16 v2, 0xba

    aput-char v2, v0, v1

    const/16 v1, 0x652

    const/16 v2, 0xd5

    aput-char v2, v0, v1

    const/16 v1, 0x653

    const/16 v2, 0xd6

    aput-char v2, v0, v1

    const/16 v1, 0x654

    const/16 v2, 0xc9

    aput-char v2, v0, v1

    const/16 v1, 0x655

    const/16 v2, 0xb8

    aput-char v2, v0, v1

    const/16 v1, 0x656

    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0x657

    const/16 v2, 0xbb

    aput-char v2, v0, v1

    const/16 v1, 0x658

    const/16 v2, 0xd4

    aput-char v2, v0, v1

    const/16 v1, 0x659

    const/16 v2, 0xd3

    aput-char v2, v0, v1

    const/16 v1, 0x65a

    const/16 v2, 0xc8

    aput-char v2, v0, v1

    const/16 v1, 0x65b

    const/16 v2, 0xbe

    aput-char v2, v0, v1

    const/16 v1, 0x65c

    const/16 v2, 0xbd

    aput-char v2, v0, v1

    const/16 v1, 0x65d

    const/16 v2, 0xbc

    aput-char v2, v0, v1

    const/16 v1, 0x65e

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0x65f

    const/16 v2, 0xc7

    aput-char v2, v0, v1

    const/16 v1, 0x660

    .line 400
    const/16 v2, 0xcc

    aput-char v2, v0, v1

    const/16 v1, 0x661

    const/16 v2, 0xb5

    aput-char v2, v0, v1

    const/16 v1, 0x662

    const/16 v2, 0xb6

    aput-char v2, v0, v1

    const/16 v1, 0x663

    const/16 v2, 0xb9

    aput-char v2, v0, v1

    const/16 v1, 0x664

    const/16 v2, 0xd1

    aput-char v2, v0, v1

    const/16 v1, 0x665

    const/16 v2, 0xd2

    aput-char v2, v0, v1

    const/16 v1, 0x666

    const/16 v2, 0xcb

    aput-char v2, v0, v1

    const/16 v1, 0x667

    const/16 v2, 0xcf

    aput-char v2, v0, v1

    const/16 v1, 0x668

    const/16 v2, 0xd0

    aput-char v2, v0, v1

    const/16 v1, 0x669

    const/16 v2, 0xca

    aput-char v2, v0, v1

    const/16 v1, 0x66a

    const/16 v2, 0xd8

    aput-char v2, v0, v1

    const/16 v1, 0x66b

    const/16 v2, 0xd7

    aput-char v2, v0, v1

    const/16 v1, 0x66c

    const/16 v2, 0xce

    aput-char v2, v0, v1

    const/16 v1, 0x680

    .line 402
    const/16 v2, 0xdf

    aput-char v2, v0, v1

    const/16 v1, 0x684

    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x688

    const/16 v2, 0xdb

    aput-char v2, v0, v1

    const/16 v1, 0x68c

    const/16 v2, 0xdd

    aput-char v2, v0, v1

    const/16 v1, 0x690

    .line 403
    const/16 v2, 0xde

    aput-char v2, v0, v1

    const/16 v1, 0x691

    const/16 v2, 0xb0

    aput-char v2, v0, v1

    const/16 v1, 0x692

    const/16 v2, 0xb1

    aput-char v2, v0, v1

    const/16 v1, 0x693

    const/16 v2, 0xb2

    aput-char v2, v0, v1

    const/16 v1, 0x6a0

    .line 404
    const/16 v2, 0xfe

    aput-char v2, v0, v1

    .line 290
    sput-object v0, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->arr:[C

    .line 412
    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 413
    aput v4, v0, v4

    aput v3, v0, v5

    aput v5, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 414
    aput v6, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v7, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x24

    aput v3, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    aput v3, v0, v1

    const/16 v1, 0x2a

    aput v3, v0, v1

    const/16 v1, 0x2b

    aput v3, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    aput v3, v0, v1

    const/16 v1, 0x2e

    aput v3, v0, v1

    const/16 v1, 0x2f

    aput v3, v0, v1

    const/16 v1, 0x30

    aput v3, v0, v1

    const/16 v1, 0x31

    aput v3, v0, v1

    const/16 v1, 0x32

    aput v3, v0, v1

    const/16 v1, 0x33

    aput v3, v0, v1

    const/16 v1, 0x34

    aput v3, v0, v1

    const/16 v1, 0x35

    aput v3, v0, v1

    const/16 v1, 0x36

    aput v3, v0, v1

    const/16 v1, 0x37

    aput v3, v0, v1

    const/16 v1, 0x38

    aput v3, v0, v1

    const/16 v1, 0x39

    aput v3, v0, v1

    const/16 v1, 0x3a

    aput v3, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    aput v3, v0, v1

    const/16 v1, 0x3d

    aput v3, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

    const/16 v1, 0x40

    .line 415
    aput v3, v0, v1

    const/16 v1, 0x41

    aput v3, v0, v1

    const/16 v1, 0x42

    aput v3, v0, v1

    const/16 v1, 0x43

    aput v3, v0, v1

    const/16 v1, 0x44

    aput v3, v0, v1

    const/16 v1, 0x45

    aput v3, v0, v1

    const/16 v1, 0x46

    aput v3, v0, v1

    const/16 v1, 0x47

    aput v3, v0, v1

    const/16 v1, 0x48

    aput v3, v0, v1

    const/16 v1, 0x49

    aput v3, v0, v1

    const/16 v1, 0x4a

    aput v3, v0, v1

    const/16 v1, 0x4b

    aput v3, v0, v1

    const/16 v1, 0x4c

    aput v3, v0, v1

    const/16 v1, 0x4d

    aput v3, v0, v1

    const/16 v1, 0x4e

    aput v3, v0, v1

    const/16 v1, 0x4f

    aput v3, v0, v1

    const/16 v1, 0x50

    aput v3, v0, v1

    const/16 v1, 0x51

    aput v3, v0, v1

    const/16 v1, 0x52

    aput v3, v0, v1

    const/16 v1, 0x53

    aput v3, v0, v1

    const/16 v1, 0x54

    aput v3, v0, v1

    const/16 v1, 0x55

    aput v3, v0, v1

    const/16 v1, 0x56

    aput v3, v0, v1

    const/16 v1, 0x57

    aput v3, v0, v1

    const/16 v1, 0x58

    aput v3, v0, v1

    const/16 v1, 0x59

    aput v3, v0, v1

    const/16 v1, 0x5a

    aput v3, v0, v1

    const/16 v1, 0x5b

    aput v3, v0, v1

    const/16 v1, 0x5c

    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    const/16 v1, 0x60

    .line 416
    aput v3, v0, v1

    const/16 v1, 0x61

    aput v3, v0, v1

    const/16 v1, 0x62

    aput v3, v0, v1

    const/16 v1, 0x63

    aput v3, v0, v1

    const/16 v1, 0x64

    aput v3, v0, v1

    const/16 v1, 0x65

    aput v3, v0, v1

    const/16 v1, 0x66

    aput v3, v0, v1

    const/16 v1, 0x67

    aput v3, v0, v1

    const/16 v1, 0x68

    aput v3, v0, v1

    const/16 v1, 0x69

    aput v3, v0, v1

    const/16 v1, 0x6a

    aput v3, v0, v1

    const/16 v1, 0x6b

    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x6d

    aput v3, v0, v1

    const/16 v1, 0x6e

    aput v3, v0, v1

    const/16 v1, 0x6f

    aput v3, v0, v1

    const/16 v1, 0x70

    aput v3, v0, v1

    const/16 v1, 0x71

    aput v3, v0, v1

    const/16 v1, 0x72

    aput v3, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x74

    aput v3, v0, v1

    const/16 v1, 0x75

    aput v3, v0, v1

    const/16 v1, 0x76

    aput v3, v0, v1

    const/16 v1, 0x77

    aput v3, v0, v1

    const/16 v1, 0x78

    aput v3, v0, v1

    const/16 v1, 0x79

    aput v3, v0, v1

    const/16 v1, 0x7a

    aput v3, v0, v1

    const/16 v1, 0x7b

    aput v3, v0, v1

    const/16 v1, 0x7c

    aput v3, v0, v1

    const/16 v1, 0x7d

    aput v3, v0, v1

    const/16 v1, 0x7e

    aput v3, v0, v1

    const/16 v1, 0x7f

    aput v3, v0, v1

    const/16 v1, 0x80

    .line 417
    aput v3, v0, v1

    const/16 v1, 0x81

    aput v3, v0, v1

    const/16 v1, 0x82

    aput v3, v0, v1

    const/16 v1, 0x83

    aput v3, v0, v1

    const/16 v1, 0x84

    aput v3, v0, v1

    const/16 v1, 0x85

    aput v3, v0, v1

    const/16 v1, 0x86

    aput v3, v0, v1

    const/16 v1, 0x87

    aput v3, v0, v1

    const/16 v1, 0x88

    aput v3, v0, v1

    const/16 v1, 0x89

    aput v3, v0, v1

    const/16 v1, 0x8a

    aput v3, v0, v1

    const/16 v1, 0x8b

    aput v3, v0, v1

    const/16 v1, 0x8c

    aput v3, v0, v1

    const/16 v1, 0x8d

    aput v3, v0, v1

    const/16 v1, 0x8e

    aput v3, v0, v1

    const/16 v1, 0x8f

    aput v3, v0, v1

    const/16 v1, 0x90

    aput v3, v0, v1

    const/16 v1, 0x91

    aput v3, v0, v1

    const/16 v1, 0x92

    aput v3, v0, v1

    const/16 v1, 0x93

    aput v3, v0, v1

    const/16 v1, 0x94

    aput v3, v0, v1

    const/16 v1, 0x95

    aput v3, v0, v1

    const/16 v1, 0x96

    aput v3, v0, v1

    const/16 v1, 0x97

    aput v3, v0, v1

    const/16 v1, 0x98

    aput v3, v0, v1

    const/16 v1, 0x99

    aput v3, v0, v1

    const/16 v1, 0x9a

    aput v3, v0, v1

    const/16 v1, 0x9b

    aput v3, v0, v1

    const/16 v1, 0x9c

    aput v3, v0, v1

    const/16 v1, 0x9d

    aput v3, v0, v1

    const/16 v1, 0x9e

    aput v3, v0, v1

    const/16 v1, 0x9f

    aput v3, v0, v1

    const/16 v1, 0xa0

    .line 418
    aput v3, v0, v1

    const/16 v1, 0xa1

    aput v3, v0, v1

    const/16 v1, 0xa2

    aput v3, v0, v1

    const/16 v1, 0xa3

    aput v3, v0, v1

    const/16 v1, 0xa4

    aput v3, v0, v1

    const/16 v1, 0xa5

    aput v3, v0, v1

    const/16 v1, 0xa6

    aput v3, v0, v1

    const/16 v1, 0xa7

    aput v3, v0, v1

    const/16 v1, 0xa8

    aput v3, v0, v1

    const/16 v1, 0xa9

    aput v3, v0, v1

    const/16 v1, 0xaa

    aput v3, v0, v1

    const/16 v1, 0xab

    aput v3, v0, v1

    const/16 v1, 0xac

    aput v3, v0, v1

    const/16 v1, 0xad

    aput v3, v0, v1

    const/16 v1, 0xae

    aput v3, v0, v1

    const/16 v1, 0xaf

    aput v3, v0, v1

    const/16 v1, 0xb0

    aput v3, v0, v1

    const/16 v1, 0xb1

    aput v3, v0, v1

    const/16 v1, 0xb2

    aput v3, v0, v1

    const/16 v1, 0xb3

    aput v3, v0, v1

    const/16 v1, 0xb4

    aput v3, v0, v1

    const/16 v1, 0xb5

    aput v3, v0, v1

    const/16 v1, 0xb6

    aput v3, v0, v1

    const/16 v1, 0xb7

    aput v3, v0, v1

    const/16 v1, 0xb8

    aput v3, v0, v1

    const/16 v1, 0xb9

    aput v3, v0, v1

    const/16 v1, 0xba

    aput v3, v0, v1

    const/16 v1, 0xbb

    aput v3, v0, v1

    const/16 v1, 0xbc

    aput v3, v0, v1

    const/16 v1, 0xbd

    aput v3, v0, v1

    const/16 v1, 0xbe

    aput v3, v0, v1

    const/16 v1, 0xbf

    aput v3, v0, v1

    const/16 v1, 0xc0

    .line 419
    aput v3, v0, v1

    const/16 v1, 0xc1

    aput v3, v0, v1

    const/16 v1, 0xc2

    aput v3, v0, v1

    const/16 v1, 0xc3

    aput v3, v0, v1

    const/16 v1, 0xc4

    aput v3, v0, v1

    const/16 v1, 0xc5

    aput v3, v0, v1

    const/16 v1, 0xc6

    aput v3, v0, v1

    const/16 v1, 0xc7

    aput v3, v0, v1

    const/16 v1, 0xc8

    aput v3, v0, v1

    const/16 v1, 0xc9

    aput v3, v0, v1

    const/16 v1, 0xca

    aput v3, v0, v1

    const/16 v1, 0xcb

    aput v3, v0, v1

    const/16 v1, 0xcc

    aput v3, v0, v1

    const/16 v1, 0xcd

    aput v3, v0, v1

    const/16 v1, 0xce

    aput v3, v0, v1

    const/16 v1, 0xcf

    aput v3, v0, v1

    const/16 v1, 0xd0

    aput v3, v0, v1

    const/16 v1, 0xd1

    aput v3, v0, v1

    const/16 v1, 0xd2

    aput v3, v0, v1

    const/16 v1, 0xd3

    aput v3, v0, v1

    const/16 v1, 0xd4

    aput v3, v0, v1

    const/16 v1, 0xd5

    aput v3, v0, v1

    const/16 v1, 0xd6

    aput v3, v0, v1

    const/16 v1, 0xd7

    aput v3, v0, v1

    const/16 v1, 0xd8

    aput v3, v0, v1

    const/16 v1, 0xd9

    aput v3, v0, v1

    const/16 v1, 0xda

    aput v3, v0, v1

    const/16 v1, 0xdb

    aput v3, v0, v1

    const/16 v1, 0xdc

    aput v3, v0, v1

    const/16 v1, 0xdd

    aput v3, v0, v1

    const/16 v1, 0xde

    aput v3, v0, v1

    const/16 v1, 0xdf

    aput v3, v0, v1

    const/16 v1, 0xe0

    .line 420
    aput v3, v0, v1

    const/16 v1, 0xe1

    aput v3, v0, v1

    const/16 v1, 0xe2

    aput v3, v0, v1

    const/16 v1, 0xe3

    aput v3, v0, v1

    const/16 v1, 0xe4

    aput v3, v0, v1

    const/16 v1, 0xe5

    aput v3, v0, v1

    const/16 v1, 0xe6

    aput v3, v0, v1

    const/16 v1, 0xe7

    aput v3, v0, v1

    const/16 v1, 0xe8

    aput v3, v0, v1

    const/16 v1, 0xe9

    aput v3, v0, v1

    const/16 v1, 0xea

    aput v3, v0, v1

    const/16 v1, 0xeb

    aput v3, v0, v1

    const/16 v1, 0xec

    aput v3, v0, v1

    const/16 v1, 0xed

    aput v3, v0, v1

    const/16 v1, 0xee

    aput v3, v0, v1

    const/16 v1, 0xef

    aput v3, v0, v1

    const/16 v1, 0xf0

    aput v3, v0, v1

    const/16 v1, 0xf1

    aput v3, v0, v1

    const/16 v1, 0xf2

    aput v3, v0, v1

    const/16 v1, 0xf3

    aput v3, v0, v1

    const/16 v1, 0xf4

    aput v3, v0, v1

    const/16 v1, 0xf5

    aput v3, v0, v1

    const/16 v1, 0xf6

    aput v3, v0, v1

    const/16 v1, 0xf7

    aput v3, v0, v1

    const/16 v1, 0xf8

    aput v3, v0, v1

    const/16 v1, 0xf9

    aput v3, v0, v1

    const/16 v1, 0xfa

    aput v3, v0, v1

    const/16 v1, 0xfb

    aput v3, v0, v1

    const/16 v1, 0xfc

    aput v3, v0, v1

    const/16 v1, 0xfd

    aput v3, v0, v1

    const/16 v1, 0xfe

    aput v3, v0, v1

    const/16 v1, 0xff

    aput v3, v0, v1

    .line 412
    sput-object v0, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->encodeIndex:[I

    .line 149
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "cs"

    .prologue
    const/high16 v0, 0x3f80

    .line 151
    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 12
    .parameter "cb"
    .parameter "bb"

    .prologue
    .line 157
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 186
    .local v0, bbRemaining:I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 187
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 188
    .local v1, byteArr:[B
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    .line 189
    .local v6, charArr:[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v8

    .line 190
    .local v8, rem:I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 191
    .local v2, byteArrStart:I
    if-gt v0, v8, :cond_0

    move v8, v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v9

    .local v9, x:I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/2addr v10, v8

    if-lt v9, v10, :cond_1

    .line 233
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    if-ne v8, v0, :cond_10

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 236
    sget-object v10, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 287
    .end local v1           #byteArr:[B
    .end local v2           #byteArrStart:I
    .end local v6           #charArr:[C
    .end local v8           #rem:I
    .end local v9           #x:I
    :goto_1
    return-object v10

    .line 194
    .restart local v1       #byteArr:[B
    .restart local v2       #byteArrStart:I
    .restart local v6       #charArr:[C
    .restart local v8       #rem:I
    .restart local v9       #x:I
    :cond_1
    aget-char v4, v6, v9

    .line 195
    .local v4, c:C
    const/16 v10, 0x25a0

    if-le v4, v10, :cond_5

    .line 196
    const v10, 0xd800

    if-lt v4, v10, :cond_4

    const v10, 0xdfff

    if-gt v4, v10, :cond_4

    .line 197
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 198
    add-int/lit8 v10, v9, 0x1

    aget-char v5, v6, v10

    .line 199
    .local v5, c1:C
    const v10, 0xd800

    if-lt v5, v10, :cond_3

    const v10, 0xdfff

    if-gt v5, v10, :cond_3

    .line 200
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto :goto_1

    .line 204
    .end local v5           #c1:C
    :cond_2
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    .line 207
    .restart local v5       #c1:C
    :cond_3
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto :goto_1

    .line 210
    .end local v5           #c1:C
    :cond_4
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto :goto_1

    .line 213
    :cond_5
    const/16 v10, 0x1a

    if-ge v4, v10, :cond_6

    .line 214
    add-int/lit8 v3, v2, 0x1

    .end local v2           #byteArrStart:I
    .local v3, byteArrStart:I
    int-to-byte v10, v4

    aput-byte v10, v1, v2

    move v2, v3

    .line 193
    .end local v3           #byteArrStart:I
    .restart local v2       #byteArrStart:I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 216
    :cond_6
    shr-int/lit8 v7, v4, 0x8

    .line 217
    .local v7, index:I
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->encodeIndex:[I

    aget v7, v10, v7

    .line 218
    if-gez v7, :cond_7

    .line 219
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto :goto_1

    .line 222
    :cond_7
    shl-int/lit8 v7, v7, 0x8

    .line 223
    and-int/lit16 v10, v4, 0xff

    add-int/2addr v7, v10

    .line 224
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->arr:[C

    aget-char v10, v10, v7

    int-to-byte v10, v10

    if-eqz v10, :cond_8

    .line 225
    add-int/lit8 v3, v2, 0x1

    .end local v2           #byteArrStart:I
    .restart local v3       #byteArrStart:I
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->arr:[C

    aget-char v10, v10, v7

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    move v2, v3

    .end local v3           #byteArrStart:I
    .restart local v2       #byteArrStart:I
    goto :goto_2

    .line 227
    :cond_8
    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 228
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto/16 :goto_1

    .line 240
    .end local v1           #byteArr:[B
    .end local v2           #byteArrStart:I
    .end local v4           #c:C
    .end local v6           #charArr:[C
    .end local v7           #index:I
    .end local v8           #rem:I
    .end local v9           #x:I
    :cond_9
    if-nez v0, :cond_a

    sget-object v10, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1

    .line 241
    :cond_a
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    .line 242
    .restart local v4       #c:C
    const/16 v10, 0x25a0

    if-le v4, v10, :cond_e

    .line 243
    const v10, 0xd800

    if-lt v4, v10, :cond_d

    const v10, 0xdfff

    if-gt v4, v10, :cond_d

    .line 244
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 245
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    .line 246
    .restart local v5       #c1:C
    const v10, 0xd800

    if-lt v5, v10, :cond_b

    const v10, 0xdfff

    if-gt v5, v10, :cond_b

    .line 247
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto/16 :goto_1

    .line 250
    :cond_b
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto/16 :goto_1

    .line 253
    .end local v5           #c1:C
    :cond_c
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1

    .line 259
    :cond_d
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto/16 :goto_1

    .line 262
    :cond_e
    const/16 v10, 0x1a

    if-ge v4, v10, :cond_11

    .line 263
    int-to-byte v10, v4

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 280
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 239
    .end local v4           #c:C
    :cond_f
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v10

    if-nez v10, :cond_9

    .line 287
    :cond_10
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto/16 :goto_1

    .line 265
    .restart local v4       #c:C
    :cond_11
    shr-int/lit8 v7, v4, 0x8

    .line 266
    .restart local v7       #index:I
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->encodeIndex:[I

    aget v7, v10, v7

    .line 267
    if-gez v7, :cond_12

    .line 268
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto/16 :goto_1

    .line 271
    :cond_12
    shl-int/lit8 v7, v7, 0x8

    .line 272
    and-int/lit16 v10, v4, 0xff

    add-int/2addr v7, v10

    .line 273
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->arr:[C

    aget-char v10, v10, v7

    int-to-byte v10, v10

    if-eqz v10, :cond_13

    .line 274
    sget-object v10, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;->arr:[C

    aget-char v10, v10, v7

    int-to-byte v10, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 276
    :cond_13
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 277
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v10

    goto/16 :goto_1
.end method
