.class public Lcom/trilead/ssh2/crypto/cipher/DES;
.super Ljava/lang/Object;
.source "DES.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# static fields
.field static Df_Key:[S

.field static SP1:[I

.field static SP2:[I

.field static SP3:[I

.field static SP4:[I

.field static SP5:[I

.field static SP6:[I

.field static SP7:[I

.field static SP8:[I

.field static bigbyte:[I

.field static bytebit:[S

.field static pc1:[B

.field static pc2:[B

.field static totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x10

    .line 93
    const/16 v0, 0x18

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->Df_Key:[S

    .line 96
    new-array v0, v7, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->bytebit:[S

    .line 98
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->bigbyte:[I

    .line 105
    const/16 v0, 0x38

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v1, v0, v4

    const/16 v1, 0x28

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    const/16 v1, 0x39

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v4, v0, v1

    const/16 v1, 0x3a

    aput-byte v1, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v1, 0x18

    .line 106
    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 107
    aput-byte v6, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 105
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->pc1:[B

    .line 109
    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->totrot:[B

    .line 111
    const/16 v0, 0x30

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    aput-byte v3, v0, v4

    const/16 v1, 0xa

    aput-byte v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v6, v0, v1

    const/4 v1, 0x6

    aput-byte v5, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v1, v0, v3

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v4, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    .line 112
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 111
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->pc2:[B

    .line 114
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010400

    aput v2, v0, v1

    const/high16 v1, 0x1

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x1010404

    aput v2, v0, v1

    const v1, 0x1010004

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10404

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    .line 115
    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x400

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    .line 116
    const/16 v1, 0x404

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x16

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 117
    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 118
    aput v6, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x26

    const/high16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x1010004

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 119
    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x2d

    aput v6, v0, v1

    const/16 v1, 0x2e

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x1010404

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x101

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x1000404

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 120
    const v2, 0x1000004

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10404

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x1010400

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x404

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x1000400

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x10004

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 121
    const v2, 0x10400

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x1010004

    aput v2, v0, v1

    .line 114
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP1:[I

    .line 123
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const v1, -0x7fff8000

    aput v1, v0, v4

    const v1, 0x8000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x108020

    aput v2, v0, v1

    const/high16 v1, 0x10

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x20

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 124
    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const v1, -0x7fffffe0

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, -0x7fefffe0

    aput v2, v0, v1

    .line 125
    const v1, 0x108000

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x14

    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x17

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 126
    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 127
    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, -0x7ff0

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 128
    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x108020

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x8000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x7fef8000

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 129
    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x7fff7fe0

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x7fffffe0

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x100020

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x108000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7fff8000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x8020

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/high16 v2, -0x8000

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 130
    const v2, -0x7fefffe0

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x7fef7fe0

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x108000

    aput v2, v0, v1

    .line 123
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP2:[I

    .line 132
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x208

    aput v2, v0, v1

    const v1, 0x8020200

    aput v1, v0, v4

    const/4 v1, 0x3

    const v2, 0x8020008

    aput v2, v0, v1

    const v1, 0x8000200

    aput v1, v0, v6

    const/4 v1, 0x6

    const v2, 0x20208

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 133
    const v2, 0x8000200

    aput v2, v0, v1

    const v1, 0x20008

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0xb

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x208

    aput v2, v0, v1

    .line 134
    const/high16 v1, 0x800

    aput v1, v0, v3

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 135
    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x1c

    aput v7, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 136
    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x8020200

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20008

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 137
    const v2, 0x8000200

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x31

    const/high16 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x8020208

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 138
    aput v7, v0, v1

    const/16 v1, 0x35

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x20200

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x8000008

    aput v2, v0, v1

    const/16 v1, 0x38

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x8000208

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x20208

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 139
    aput v7, v0, v1

    const/16 v1, 0x3e

    const v2, 0x8020008

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20200

    aput v2, v0, v1

    .line 132
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP3:[I

    .line 141
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2081

    aput v1, v0, v4

    const/16 v1, 0x2081

    aput v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x80

    aput v2, v0, v1

    const v1, 0x802080

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x800081

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x800001

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 142
    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x800001

    aput v2, v0, v1

    .line 143
    aput v4, v0, v3

    const/16 v1, 0x11

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 144
    aput v4, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 145
    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x802000

    aput v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x800080

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 146
    aput v4, v0, v1

    const/16 v1, 0x2c

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2081

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x802081

    aput v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x81

    aput v2, v0, v1

    const/16 v1, 0x32

    aput v4, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 147
    const v2, 0x800001

    aput v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x802080

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x800081

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x2001

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x2080

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x802001

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 148
    const/high16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x802080

    aput v2, v0, v1

    .line 141
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP4:[I

    .line 150
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x100

    aput v2, v0, v1

    const v1, 0x2080100

    aput v1, v0, v4

    const/high16 v1, 0x208

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x42000100

    aput v2, v0, v1

    const/high16 v1, 0x8

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 151
    const/high16 v2, 0x208

    aput v2, v0, v1

    const v1, 0x40080100

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x4000

    aput v2, v0, v1

    .line 152
    const/high16 v1, 0x200

    aput v1, v0, v3

    const/16 v1, 0x11

    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 153
    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x1b

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 154
    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x23

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x24

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x42000100

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 155
    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x40080100

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x4208

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x32

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x42080100

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 156
    const/high16 v2, 0x208

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x37

    const/high16 v2, 0x4200

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x80100

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x2000100

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x40000100

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/high16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 157
    const/high16 v2, 0x4008

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x2080100

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x40000100

    aput v2, v0, v1

    .line 150
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP5:[I

    .line 159
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x20000010

    aput v2, v0, v1

    const/high16 v1, 0x2040

    aput v1, v0, v4

    const/16 v1, 0x4000

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x20404010

    aput v2, v0, v1

    const/high16 v1, 0x2040

    aput v1, v0, v6

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const v2, 0x20404010

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 160
    const/high16 v2, 0x40

    aput v2, v0, v1

    const v1, 0x20004000

    aput v1, v0, v7

    const/16 v1, 0x9

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0xa

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0xe

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x11

    .line 161
    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x1a

    .line 162
    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    .line 163
    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x25

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x28

    const/high16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x20004000

    aput v2, v0, v1

    const/16 v1, 0x2a

    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 164
    const/16 v2, 0x4010

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x20000010

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x20404010

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x404000

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/high16 v2, 0x2040

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x20400010

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 165
    aput v3, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x36

    const/high16 v2, 0x2040

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x404010

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x4000

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x20004010

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x20404000

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 166
    const/high16 v2, 0x2000

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x400010

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x20004010

    aput v2, v0, v1

    .line 159
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP6:[I

    .line 168
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x20

    aput v2, v0, v1

    const v1, 0x4200002

    aput v1, v0, v4

    const v1, 0x4000802

    aput v1, v0, v5

    const/16 v1, 0x800

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x4000802

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x200802

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 169
    const v2, 0x4200800

    aput v2, v0, v1

    const v1, 0x4200802

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v5, v0, v1

    const/16 v1, 0xd

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x802

    aput v2, v0, v1

    .line 170
    const v1, 0x4000800

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x15

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x18

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x19

    .line 171
    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x1d

    aput v5, v0, v1

    const/16 v1, 0x1e

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x20

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 172
    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x4000802

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x4000802

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x4200002

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v5, v0, v1

    const/16 v1, 0x28

    const v2, 0x200002

    aput v2, v0, v1

    const/16 v1, 0x29

    const/high16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 173
    const/high16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x4200800

    aput v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x802

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x33

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 174
    const v2, 0x200800

    aput v2, v0, v1

    const/16 v1, 0x36

    aput v5, v0, v1

    const/16 v1, 0x37

    const v2, 0x4200802

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x200802

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/high16 v2, 0x420

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x4000002

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 175
    const v2, 0x4000800

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x200002

    aput v2, v0, v1

    .line 168
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP7:[I

    .line 177
    const/16 v0, 0x40

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x1000

    aput v1, v0, v4

    const/high16 v1, 0x4

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0x10041040

    aput v2, v0, v1

    const/high16 v1, 0x1000

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x10001040

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x40

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 178
    const/high16 v2, 0x1000

    aput v2, v0, v1

    const v1, 0x40040

    aput v1, v0, v7

    const/16 v1, 0x9

    const/high16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x40

    aput v2, v0, v1

    .line 179
    const/high16 v1, 0x1004

    aput v1, v0, v3

    const/16 v1, 0x11

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x1b

    .line 180
    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x1f

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x21

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x22

    .line 181
    const v2, 0x10041000

    aput v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x41040

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x2b

    .line 182
    const/high16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x10040040

    aput v2, v0, v1

    const/16 v1, 0x2d

    const/high16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/high16 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x10000040

    aput v2, v0, v1

    const/16 v1, 0x34

    .line 183
    const/high16 v2, 0x1004

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x10001000

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x10001040

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x10041040

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x41000

    aput v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x1040

    aput v2, v0, v1

    const/16 v1, 0x3d

    .line 184
    const v2, 0x40040

    aput v2, v0, v1

    const/16 v1, 0x3e

    const/high16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x10041000

    aput v2, v0, v1

    .line 177
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/DES;->SP8:[I

    .line 37
    return-void

    .line 93
    :array_0
    .array-data 0x2
        0x1t 0x0t
        0x23t 0x0t
        0x45t 0x0t
        0x67t 0x0t
        0x89t 0x0t
        0xabt 0x0t
        0xcdt 0x0t
        0xeft 0x0t
        0xfet 0x0t
        0xdct 0x0t
        0xbat 0x0t
        0x98t 0x0t
        0x76t 0x0t
        0x54t 0x0t
        0x32t 0x0t
        0x10t 0x0t
        0x89t 0x0t
        0xabt 0x0t
        0xcdt 0x0t
        0xeft 0x0t
        0x1t 0x0t
        0x23t 0x0t
        0x45t 0x0t
        0x67t 0x0t
    .end array-data

    .line 96
    :array_1
    .array-data 0x2
        0x80t 0x0t
        0x40t 0x0t
        0x20t 0x0t
        0x10t 0x0t
        0x8t 0x0t
        0x4t 0x0t
        0x2t 0x0t
        0x1t 0x0t
    .end array-data

    .line 98
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x0t 0x40t 0x0t
        0x0t 0x0t 0x20t 0x0t
        0x0t 0x0t 0x10t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 109
    :array_3
    .array-data 0x1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    .line 46
    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .locals 7
    .parameter "wKey"
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 288
    add-int/lit8 v5, p3, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x18

    .line 289
    .local v1, left:I
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    .line 290
    add-int/lit8 v5, p3, 0x2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    .line 291
    add-int/lit8 v5, p3, 0x3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 293
    add-int/lit8 v5, p3, 0x4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x18

    .line 294
    .local v2, right:I
    add-int/lit8 v5, p3, 0x5

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    .line 295
    add-int/lit8 v5, p3, 0x6

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 296
    add-int/lit8 v5, p3, 0x7

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 298
    ushr-int/lit8 v5, v1, 0x4

    xor-int/2addr v5, v2

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 299
    .local v4, work:I
    xor-int/2addr v2, v4

    .line 300
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v1, v5

    .line 301
    ushr-int/lit8 v5, v1, 0x10

    xor-int/2addr v5, v2

    const v6, 0xffff

    and-int v4, v5, v6

    .line 302
    xor-int/2addr v2, v4

    .line 303
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v1, v5

    .line 304
    ushr-int/lit8 v5, v2, 0x2

    xor-int/2addr v5, v1

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 305
    xor-int/2addr v1, v4

    .line 306
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v2, v5

    .line 307
    ushr-int/lit8 v5, v2, 0x8

    xor-int/2addr v5, v1

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 308
    xor-int/2addr v1, v4

    .line 309
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v2, v5

    .line 310
    shl-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v2, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v2, v5, -0x1

    .line 311
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 312
    xor-int/2addr v1, v4

    .line 313
    xor-int/2addr v2, v4

    .line 314
    shl-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v1, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v1, v5, -0x1

    .line 316
    const/4 v3, 0x0

    .local v3, round:I
    :goto_0
    const/16 v5, 0x8

    if-lt v3, v5, :cond_0

    .line 346
    shl-int/lit8 v5, v2, 0x1f

    ushr-int/lit8 v6, v2, 0x1

    or-int v2, v5, v6

    .line 347
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 348
    xor-int/2addr v1, v4

    .line 349
    xor-int/2addr v2, v4

    .line 350
    shl-int/lit8 v5, v1, 0x1f

    ushr-int/lit8 v6, v1, 0x1

    or-int v1, v5, v6

    .line 351
    ushr-int/lit8 v5, v1, 0x8

    xor-int/2addr v5, v2

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 352
    xor-int/2addr v2, v4

    .line 353
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v1, v5

    .line 354
    ushr-int/lit8 v5, v1, 0x2

    xor-int/2addr v5, v2

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 355
    xor-int/2addr v2, v4

    .line 356
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v1, v5

    .line 357
    ushr-int/lit8 v5, v2, 0x10

    xor-int/2addr v5, v1

    const v6, 0xffff

    and-int v4, v5, v6

    .line 358
    xor-int/2addr v1, v4

    .line 359
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v2, v5

    .line 360
    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v1

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 361
    xor-int/2addr v1, v4

    .line 362
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v2, v5

    .line 364
    add-int/lit8 v5, p5, 0x0

    ushr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 365
    add-int/lit8 v5, p5, 0x1

    ushr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 366
    add-int/lit8 v5, p5, 0x2

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 367
    add-int/lit8 v5, p5, 0x3

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 368
    add-int/lit8 v5, p5, 0x4

    ushr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 369
    add-int/lit8 v5, p5, 0x5

    ushr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 370
    add-int/lit8 v5, p5, 0x6

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 371
    add-int/lit8 v5, p5, 0x7

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 372
    return-void

    .line 320
    :cond_0
    shl-int/lit8 v5, v2, 0x1c

    ushr-int/lit8 v6, v2, 0x4

    or-int v4, v5, v6

    .line 321
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 322
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 323
    .local v0, fval:I
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 324
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 325
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 326
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    xor-int v4, v2, v5

    .line 327
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 328
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 329
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 330
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 331
    xor-int/2addr v1, v0

    .line 332
    shl-int/lit8 v5, v1, 0x1c

    ushr-int/lit8 v6, v1, 0x4

    or-int v4, v5, v6

    .line 333
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 334
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 335
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 336
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 337
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 338
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    xor-int v4, v1, v5

    .line 339
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 340
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 341
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 342
    sget-object v5, Lcom/trilead/ssh2/crypto/cipher/DES;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 343
    xor-int/2addr v2, v0

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method protected generateWorkingKey(Z[BI)[I
    .locals 13
    .parameter "encrypting"
    .parameter "key"
    .parameter "off"

    .prologue
    .line 195
    const/16 v10, 0x20

    new-array v7, v10, [I

    .line 196
    .local v7, newKey:[I
    const/16 v10, 0x38

    new-array v8, v10, [Z

    .local v8, pc1m:[Z
    const/16 v10, 0x38

    new-array v9, v10, [Z

    .line 198
    .local v9, pcr:[Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    const/16 v10, 0x38

    if-lt v3, v10, :cond_0

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v10, 0x10

    if-lt v0, v10, :cond_2

    .line 264
    const/4 v0, 0x0

    :goto_2
    const/16 v10, 0x20

    if-ne v0, v10, :cond_b

    .line 278
    return-object v7

    .line 200
    .end local v0           #i:I
    :cond_0
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->pc1:[B

    aget-byte v4, v10, v3

    .line 202
    .local v4, l:I
    ushr-int/lit8 v10, v4, 0x3

    add-int v10, v10, p3

    aget-byte v10, p2, v10

    sget-object v11, Lcom/trilead/ssh2/crypto/cipher/DES;->bytebit:[S

    and-int/lit8 v12, v4, 0x7

    aget-short v11, v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_3
    aput-boolean v10, v8, v3

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v10, 0x0

    goto :goto_3

    .line 209
    .end local v4           #l:I
    .restart local v0       #i:I
    :cond_2
    if-eqz p1, :cond_3

    .line 211
    shl-int/lit8 v5, v0, 0x1

    .line 218
    .local v5, m:I
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .line 219
    .local v6, n:I
    const/4 v10, 0x0

    aput v10, v7, v6

    aput v10, v7, v5

    .line 221
    const/4 v3, 0x0

    :goto_5
    const/16 v10, 0x1c

    if-lt v3, v10, :cond_4

    .line 234
    const/16 v3, 0x1c

    :goto_6
    const/16 v10, 0x38

    if-lt v3, v10, :cond_6

    .line 247
    const/4 v3, 0x0

    :goto_7
    const/16 v10, 0x18

    if-lt v3, v10, :cond_8

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    .end local v5           #m:I
    .end local v6           #n:I
    :cond_3
    const/16 v10, 0xf

    sub-int/2addr v10, v0

    shl-int/lit8 v5, v10, 0x1

    .restart local v5       #m:I
    goto :goto_4

    .line 223
    .restart local v6       #n:I
    :cond_4
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 224
    .restart local v4       #l:I
    const/16 v10, 0x1c

    if-ge v4, v10, :cond_5

    .line 226
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 221
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 230
    :cond_5
    const/16 v10, 0x1c

    sub-int v10, v4, v10

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_8

    .line 236
    .end local v4           #l:I
    :cond_6
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 237
    .restart local v4       #l:I
    const/16 v10, 0x38

    if-ge v4, v10, :cond_7

    .line 239
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 234
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 243
    :cond_7
    const/16 v10, 0x1c

    sub-int v10, v4, v10

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_9

    .line 249
    .end local v4           #l:I
    :cond_8
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->pc2:[B

    aget-byte v10, v10, v3

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_9

    .line 251
    aget v10, v7, v5

    sget-object v11, Lcom/trilead/ssh2/crypto/cipher/DES;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v5

    .line 254
    :cond_9
    sget-object v10, Lcom/trilead/ssh2/crypto/cipher/DES;->pc2:[B

    add-int/lit8 v11, v3, 0x18

    aget-byte v10, v10, v11

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_a

    .line 256
    aget v10, v7, v6

    sget-object v11, Lcom/trilead/ssh2/crypto/cipher/DES;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v6

    .line 247
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 268
    .end local v5           #m:I
    .end local v6           #n:I
    :cond_b
    aget v1, v7, v0

    .line 269
    .local v1, i1:I
    add-int/lit8 v10, v0, 0x1

    aget v2, v7, v10

    .line 271
    .local v2, i2:I
    const/high16 v10, 0xfc

    and-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x6

    and-int/lit16 v11, v1, 0xfc0

    shl-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    const/high16 v11, 0xfc

    and-int/2addr v11, v2

    ushr-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    .line 272
    and-int/lit16 v11, v2, 0xfc0

    ushr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    .line 271
    aput v10, v7, v0

    .line 274
    add-int/lit8 v10, v0, 0x1

    const v11, 0x3f000

    and-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0xc

    and-int/lit8 v12, v1, 0x3f

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const v12, 0x3f000

    and-int/2addr v12, v2

    ushr-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    .line 275
    and-int/lit8 v12, v2, 0x3f

    or-int/2addr v11, v12

    .line 274
    aput v11, v7, v10

    .line 264
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x8

    return v0
.end method

.method public init(Z[B)V
    .locals 1
    .parameter "encrypting"
    .parameter "key"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/trilead/ssh2/crypto/cipher/DES;->generateWorkingKey(Z[BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    .line 61
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 6
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/trilead/ssh2/crypto/cipher/DES;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/trilead/ssh2/crypto/cipher/DES;->desFunc([I[BI[BI)V

    .line 81
    return-void
.end method
