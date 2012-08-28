.class final Lcom/jcraft/jzlib/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field static final _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lcom/jcraft/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x1d

    const/16 v6, 0x1c

    const/16 v5, 0x1a

    const/16 v4, 0xf

    const/16 v3, 0xe

    .line 62
    new-array v0, v7, [I

    const/16 v1, 0x8

    .line 63
    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v4

    const/16 v1, 0x10

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v1, v0, v5

    const/16 v1, 0x1b

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 62
    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 67
    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/4 v1, 0x4

    .line 68
    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v1, v0, v3

    const/4 v1, 0x6

    aput v1, v0, v4

    const/16 v1, 0x10

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v1, v0, v5

    const/16 v1, 0x1b

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v1, v0, v6

    const/16 v1, 0xd

    aput v1, v0, v7

    .line 67
    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 72
    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0x10

    .line 73
    const/4 v2, 0x2

    aput v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x3

    aput v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x7

    aput v2, v0, v1

    .line 72
    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_blbits:[I

    .line 76
    const/16 v0, 0x13

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 77
    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v1, v0, v4

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v4, v0, v1

    .line 76
    sput-object v0, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 89
    const/16 v0, 0x200

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 90
    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v3

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    const/16 v1, 0x10

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    .line 91
    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v1, v0, v5

    const/16 v1, 0x1b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v1, v0, v6

    const/16 v1, 0x9

    aput-byte v1, v0, v7

    const/16 v1, 0x1e

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    .line 92
    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    .line 93
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 94
    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    .line 95
    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    .line 96
    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    .line 97
    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    .line 98
    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    .line 99
    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    aput-byte v4, v0, v1

    const/16 v1, 0xc1

    aput-byte v4, v0, v1

    const/16 v1, 0xc2

    aput-byte v4, v0, v1

    const/16 v1, 0xc3

    aput-byte v4, v0, v1

    const/16 v1, 0xc4

    aput-byte v4, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    aput-byte v4, v0, v1

    const/16 v1, 0xc7

    aput-byte v4, v0, v1

    const/16 v1, 0xc8

    .line 100
    aput-byte v4, v0, v1

    const/16 v1, 0xc9

    aput-byte v4, v0, v1

    const/16 v1, 0xca

    aput-byte v4, v0, v1

    const/16 v1, 0xcb

    aput-byte v4, v0, v1

    const/16 v1, 0xcc

    aput-byte v4, v0, v1

    const/16 v1, 0xcd

    aput-byte v4, v0, v1

    const/16 v1, 0xce

    aput-byte v4, v0, v1

    const/16 v1, 0xcf

    aput-byte v4, v0, v1

    const/16 v1, 0xd0

    aput-byte v4, v0, v1

    const/16 v1, 0xd1

    aput-byte v4, v0, v1

    const/16 v1, 0xd2

    aput-byte v4, v0, v1

    const/16 v1, 0xd3

    aput-byte v4, v0, v1

    const/16 v1, 0xd4

    aput-byte v4, v0, v1

    const/16 v1, 0xd5

    aput-byte v4, v0, v1

    const/16 v1, 0xd6

    aput-byte v4, v0, v1

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    const/16 v1, 0xd8

    aput-byte v4, v0, v1

    const/16 v1, 0xd9

    aput-byte v4, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    aput-byte v4, v0, v1

    const/16 v1, 0xdc

    .line 101
    aput-byte v4, v0, v1

    const/16 v1, 0xdd

    aput-byte v4, v0, v1

    const/16 v1, 0xde

    aput-byte v4, v0, v1

    const/16 v1, 0xdf

    aput-byte v4, v0, v1

    const/16 v1, 0xe0

    aput-byte v4, v0, v1

    const/16 v1, 0xe1

    aput-byte v4, v0, v1

    const/16 v1, 0xe2

    aput-byte v4, v0, v1

    const/16 v1, 0xe3

    aput-byte v4, v0, v1

    const/16 v1, 0xe4

    aput-byte v4, v0, v1

    const/16 v1, 0xe5

    aput-byte v4, v0, v1

    const/16 v1, 0xe6

    aput-byte v4, v0, v1

    const/16 v1, 0xe7

    aput-byte v4, v0, v1

    const/16 v1, 0xe8

    aput-byte v4, v0, v1

    const/16 v1, 0xe9

    aput-byte v4, v0, v1

    const/16 v1, 0xea

    aput-byte v4, v0, v1

    const/16 v1, 0xeb

    aput-byte v4, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    aput-byte v4, v0, v1

    const/16 v1, 0xee

    aput-byte v4, v0, v1

    const/16 v1, 0xef

    aput-byte v4, v0, v1

    const/16 v1, 0xf0

    .line 102
    aput-byte v4, v0, v1

    const/16 v1, 0xf1

    aput-byte v4, v0, v1

    const/16 v1, 0xf2

    aput-byte v4, v0, v1

    const/16 v1, 0xf3

    aput-byte v4, v0, v1

    const/16 v1, 0xf4

    aput-byte v4, v0, v1

    const/16 v1, 0xf5

    aput-byte v4, v0, v1

    const/16 v1, 0xf6

    aput-byte v4, v0, v1

    const/16 v1, 0xf7

    aput-byte v4, v0, v1

    const/16 v1, 0xf8

    aput-byte v4, v0, v1

    const/16 v1, 0xf9

    aput-byte v4, v0, v1

    const/16 v1, 0xfa

    aput-byte v4, v0, v1

    const/16 v1, 0xfb

    aput-byte v4, v0, v1

    const/16 v1, 0xfc

    aput-byte v4, v0, v1

    const/16 v1, 0xfd

    aput-byte v4, v0, v1

    const/16 v1, 0xfe

    aput-byte v4, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x102

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x104

    .line 103
    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x118

    .line 104
    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11b

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x128

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x129

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x12a

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x12b

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x12c

    .line 105
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x12d

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x12f

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x131

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x132

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x134

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x136

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x137

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x138

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x13b

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x13e

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x13f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x140

    .line 106
    aput-byte v5, v0, v1

    const/16 v1, 0x141

    aput-byte v5, v0, v1

    const/16 v1, 0x142

    aput-byte v5, v0, v1

    const/16 v1, 0x143

    aput-byte v5, v0, v1

    const/16 v1, 0x144

    aput-byte v5, v0, v1

    const/16 v1, 0x145

    aput-byte v5, v0, v1

    const/16 v1, 0x146

    aput-byte v5, v0, v1

    const/16 v1, 0x147

    aput-byte v5, v0, v1

    const/16 v1, 0x148

    aput-byte v5, v0, v1

    const/16 v1, 0x149

    aput-byte v5, v0, v1

    const/16 v1, 0x14a

    aput-byte v5, v0, v1

    const/16 v1, 0x14b

    aput-byte v5, v0, v1

    const/16 v1, 0x14c

    aput-byte v5, v0, v1

    const/16 v1, 0x14d

    aput-byte v5, v0, v1

    const/16 v1, 0x14e

    aput-byte v5, v0, v1

    const/16 v1, 0x14f

    aput-byte v5, v0, v1

    const/16 v1, 0x150

    aput-byte v5, v0, v1

    const/16 v1, 0x151

    aput-byte v5, v0, v1

    const/16 v1, 0x152

    aput-byte v5, v0, v1

    const/16 v1, 0x153

    aput-byte v5, v0, v1

    const/16 v1, 0x154

    .line 107
    aput-byte v5, v0, v1

    const/16 v1, 0x155

    aput-byte v5, v0, v1

    const/16 v1, 0x156

    aput-byte v5, v0, v1

    const/16 v1, 0x157

    aput-byte v5, v0, v1

    const/16 v1, 0x158

    aput-byte v5, v0, v1

    const/16 v1, 0x159

    aput-byte v5, v0, v1

    const/16 v1, 0x15a

    aput-byte v5, v0, v1

    const/16 v1, 0x15b

    aput-byte v5, v0, v1

    const/16 v1, 0x15c

    aput-byte v5, v0, v1

    const/16 v1, 0x15d

    aput-byte v5, v0, v1

    const/16 v1, 0x15e

    aput-byte v5, v0, v1

    const/16 v1, 0x15f

    aput-byte v5, v0, v1

    const/16 v1, 0x160

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x162

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x164

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x165

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x168

    .line 108
    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x16a

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x16b

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x16c

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x16e

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x16f

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x170

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x172

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x174

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x177

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x178

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x17a

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x17b

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x17c

    .line 109
    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x17d

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x17f

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x180

    aput-byte v6, v0, v1

    const/16 v1, 0x181

    aput-byte v6, v0, v1

    const/16 v1, 0x182

    aput-byte v6, v0, v1

    const/16 v1, 0x183

    aput-byte v6, v0, v1

    const/16 v1, 0x184

    aput-byte v6, v0, v1

    const/16 v1, 0x185

    aput-byte v6, v0, v1

    const/16 v1, 0x186

    aput-byte v6, v0, v1

    const/16 v1, 0x187

    aput-byte v6, v0, v1

    const/16 v1, 0x188

    aput-byte v6, v0, v1

    const/16 v1, 0x189

    aput-byte v6, v0, v1

    const/16 v1, 0x18a

    aput-byte v6, v0, v1

    const/16 v1, 0x18b

    aput-byte v6, v0, v1

    const/16 v1, 0x18c

    aput-byte v6, v0, v1

    const/16 v1, 0x18d

    aput-byte v6, v0, v1

    const/16 v1, 0x18e

    aput-byte v6, v0, v1

    const/16 v1, 0x18f

    aput-byte v6, v0, v1

    const/16 v1, 0x190

    .line 110
    aput-byte v6, v0, v1

    const/16 v1, 0x191

    aput-byte v6, v0, v1

    const/16 v1, 0x192

    aput-byte v6, v0, v1

    const/16 v1, 0x193

    aput-byte v6, v0, v1

    const/16 v1, 0x194

    aput-byte v6, v0, v1

    const/16 v1, 0x195

    aput-byte v6, v0, v1

    const/16 v1, 0x196

    aput-byte v6, v0, v1

    const/16 v1, 0x197

    aput-byte v6, v0, v1

    const/16 v1, 0x198

    aput-byte v6, v0, v1

    const/16 v1, 0x199

    aput-byte v6, v0, v1

    const/16 v1, 0x19a

    aput-byte v6, v0, v1

    const/16 v1, 0x19b

    aput-byte v6, v0, v1

    const/16 v1, 0x19c

    aput-byte v6, v0, v1

    const/16 v1, 0x19d

    aput-byte v6, v0, v1

    const/16 v1, 0x19e

    aput-byte v6, v0, v1

    const/16 v1, 0x19f

    aput-byte v6, v0, v1

    const/16 v1, 0x1a0

    aput-byte v6, v0, v1

    const/16 v1, 0x1a1

    aput-byte v6, v0, v1

    const/16 v1, 0x1a2

    aput-byte v6, v0, v1

    const/16 v1, 0x1a3

    aput-byte v6, v0, v1

    const/16 v1, 0x1a4

    .line 111
    aput-byte v6, v0, v1

    const/16 v1, 0x1a5

    aput-byte v6, v0, v1

    const/16 v1, 0x1a6

    aput-byte v6, v0, v1

    const/16 v1, 0x1a7

    aput-byte v6, v0, v1

    const/16 v1, 0x1a8

    aput-byte v6, v0, v1

    const/16 v1, 0x1a9

    aput-byte v6, v0, v1

    const/16 v1, 0x1aa

    aput-byte v6, v0, v1

    const/16 v1, 0x1ab

    aput-byte v6, v0, v1

    const/16 v1, 0x1ac

    aput-byte v6, v0, v1

    const/16 v1, 0x1ad

    aput-byte v6, v0, v1

    const/16 v1, 0x1ae

    aput-byte v6, v0, v1

    const/16 v1, 0x1af

    aput-byte v6, v0, v1

    const/16 v1, 0x1b0

    aput-byte v6, v0, v1

    const/16 v1, 0x1b1

    aput-byte v6, v0, v1

    const/16 v1, 0x1b2

    aput-byte v6, v0, v1

    const/16 v1, 0x1b3

    aput-byte v6, v0, v1

    const/16 v1, 0x1b4

    aput-byte v6, v0, v1

    const/16 v1, 0x1b5

    aput-byte v6, v0, v1

    const/16 v1, 0x1b6

    aput-byte v6, v0, v1

    const/16 v1, 0x1b7

    aput-byte v6, v0, v1

    const/16 v1, 0x1b8

    .line 112
    aput-byte v6, v0, v1

    const/16 v1, 0x1b9

    aput-byte v6, v0, v1

    const/16 v1, 0x1ba

    aput-byte v6, v0, v1

    const/16 v1, 0x1bb

    aput-byte v6, v0, v1

    const/16 v1, 0x1bc

    aput-byte v6, v0, v1

    const/16 v1, 0x1bd

    aput-byte v6, v0, v1

    const/16 v1, 0x1be

    aput-byte v6, v0, v1

    const/16 v1, 0x1bf

    aput-byte v6, v0, v1

    const/16 v1, 0x1c0

    aput-byte v7, v0, v1

    const/16 v1, 0x1c1

    aput-byte v7, v0, v1

    const/16 v1, 0x1c2

    aput-byte v7, v0, v1

    const/16 v1, 0x1c3

    aput-byte v7, v0, v1

    const/16 v1, 0x1c4

    aput-byte v7, v0, v1

    const/16 v1, 0x1c5

    aput-byte v7, v0, v1

    const/16 v1, 0x1c6

    aput-byte v7, v0, v1

    const/16 v1, 0x1c7

    aput-byte v7, v0, v1

    const/16 v1, 0x1c8

    aput-byte v7, v0, v1

    const/16 v1, 0x1c9

    aput-byte v7, v0, v1

    const/16 v1, 0x1ca

    aput-byte v7, v0, v1

    const/16 v1, 0x1cb

    aput-byte v7, v0, v1

    const/16 v1, 0x1cc

    .line 113
    aput-byte v7, v0, v1

    const/16 v1, 0x1cd

    aput-byte v7, v0, v1

    const/16 v1, 0x1ce

    aput-byte v7, v0, v1

    const/16 v1, 0x1cf

    aput-byte v7, v0, v1

    const/16 v1, 0x1d0

    aput-byte v7, v0, v1

    const/16 v1, 0x1d1

    aput-byte v7, v0, v1

    const/16 v1, 0x1d2

    aput-byte v7, v0, v1

    const/16 v1, 0x1d3

    aput-byte v7, v0, v1

    const/16 v1, 0x1d4

    aput-byte v7, v0, v1

    const/16 v1, 0x1d5

    aput-byte v7, v0, v1

    const/16 v1, 0x1d6

    aput-byte v7, v0, v1

    const/16 v1, 0x1d7

    aput-byte v7, v0, v1

    const/16 v1, 0x1d8

    aput-byte v7, v0, v1

    const/16 v1, 0x1d9

    aput-byte v7, v0, v1

    const/16 v1, 0x1da

    aput-byte v7, v0, v1

    const/16 v1, 0x1db

    aput-byte v7, v0, v1

    const/16 v1, 0x1dc

    aput-byte v7, v0, v1

    const/16 v1, 0x1dd

    aput-byte v7, v0, v1

    const/16 v1, 0x1de

    aput-byte v7, v0, v1

    const/16 v1, 0x1df

    aput-byte v7, v0, v1

    const/16 v1, 0x1e0

    .line 114
    aput-byte v7, v0, v1

    const/16 v1, 0x1e1

    aput-byte v7, v0, v1

    const/16 v1, 0x1e2

    aput-byte v7, v0, v1

    const/16 v1, 0x1e3

    aput-byte v7, v0, v1

    const/16 v1, 0x1e4

    aput-byte v7, v0, v1

    const/16 v1, 0x1e5

    aput-byte v7, v0, v1

    const/16 v1, 0x1e6

    aput-byte v7, v0, v1

    const/16 v1, 0x1e7

    aput-byte v7, v0, v1

    const/16 v1, 0x1e8

    aput-byte v7, v0, v1

    const/16 v1, 0x1e9

    aput-byte v7, v0, v1

    const/16 v1, 0x1ea

    aput-byte v7, v0, v1

    const/16 v1, 0x1eb

    aput-byte v7, v0, v1

    const/16 v1, 0x1ec

    aput-byte v7, v0, v1

    const/16 v1, 0x1ed

    aput-byte v7, v0, v1

    const/16 v1, 0x1ee

    aput-byte v7, v0, v1

    const/16 v1, 0x1ef

    aput-byte v7, v0, v1

    const/16 v1, 0x1f0

    aput-byte v7, v0, v1

    const/16 v1, 0x1f1

    aput-byte v7, v0, v1

    const/16 v1, 0x1f2

    aput-byte v7, v0, v1

    const/16 v1, 0x1f3

    aput-byte v7, v0, v1

    const/16 v1, 0x1f4

    .line 115
    aput-byte v7, v0, v1

    const/16 v1, 0x1f5

    aput-byte v7, v0, v1

    const/16 v1, 0x1f6

    aput-byte v7, v0, v1

    const/16 v1, 0x1f7

    aput-byte v7, v0, v1

    const/16 v1, 0x1f8

    aput-byte v7, v0, v1

    const/16 v1, 0x1f9

    aput-byte v7, v0, v1

    const/16 v1, 0x1fa

    aput-byte v7, v0, v1

    const/16 v1, 0x1fb

    aput-byte v7, v0, v1

    const/16 v1, 0x1fc

    aput-byte v7, v0, v1

    const/16 v1, 0x1fd

    aput-byte v7, v0, v1

    const/16 v1, 0x1fe

    aput-byte v7, v0, v1

    const/16 v1, 0x1ff

    aput-byte v7, v0, v1

    .line 89
    sput-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 118
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 119
    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v1, v0, v3

    const/16 v1, 0xb

    aput-byte v1, v0, v4

    const/16 v1, 0x10

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    .line 120
    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    aput-byte v4, v0, v6

    aput-byte v4, v0, v7

    const/16 v1, 0x1e

    aput-byte v4, v0, v1

    const/16 v1, 0x1f

    aput-byte v4, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    .line 121
    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    .line 122
    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 123
    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    .line 124
    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    .line 125
    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    .line 126
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    .line 127
    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    .line 128
    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    aput-byte v5, v0, v1

    const/16 v1, 0xc1

    aput-byte v5, v0, v1

    const/16 v1, 0xc2

    aput-byte v5, v0, v1

    const/16 v1, 0xc3

    aput-byte v5, v0, v1

    const/16 v1, 0xc4

    aput-byte v5, v0, v1

    const/16 v1, 0xc5

    aput-byte v5, v0, v1

    const/16 v1, 0xc6

    aput-byte v5, v0, v1

    const/16 v1, 0xc7

    aput-byte v5, v0, v1

    const/16 v1, 0xc8

    .line 129
    aput-byte v5, v0, v1

    const/16 v1, 0xc9

    aput-byte v5, v0, v1

    const/16 v1, 0xca

    aput-byte v5, v0, v1

    const/16 v1, 0xcb

    aput-byte v5, v0, v1

    const/16 v1, 0xcc

    aput-byte v5, v0, v1

    const/16 v1, 0xcd

    aput-byte v5, v0, v1

    const/16 v1, 0xce

    aput-byte v5, v0, v1

    const/16 v1, 0xcf

    aput-byte v5, v0, v1

    const/16 v1, 0xd0

    aput-byte v5, v0, v1

    const/16 v1, 0xd1

    aput-byte v5, v0, v1

    const/16 v1, 0xd2

    aput-byte v5, v0, v1

    const/16 v1, 0xd3

    aput-byte v5, v0, v1

    const/16 v1, 0xd4

    aput-byte v5, v0, v1

    const/16 v1, 0xd5

    aput-byte v5, v0, v1

    const/16 v1, 0xd6

    aput-byte v5, v0, v1

    const/16 v1, 0xd7

    aput-byte v5, v0, v1

    const/16 v1, 0xd8

    aput-byte v5, v0, v1

    const/16 v1, 0xd9

    aput-byte v5, v0, v1

    const/16 v1, 0xda

    aput-byte v5, v0, v1

    const/16 v1, 0xdb

    aput-byte v5, v0, v1

    const/16 v1, 0xdc

    .line 130
    aput-byte v5, v0, v1

    const/16 v1, 0xdd

    aput-byte v5, v0, v1

    const/16 v1, 0xde

    aput-byte v5, v0, v1

    const/16 v1, 0xdf

    aput-byte v5, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    .line 131
    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    aput-byte v6, v0, v1

    .line 118
    sput-object v0, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 134
    new-array v0, v7, [I

    const/4 v1, 0x1

    .line 135
    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x18

    aput v1, v0, v3

    aput v6, v0, v4

    const/16 v1, 0x10

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x38

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 136
    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x50

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x70

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x80

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xa0

    aput v2, v0, v1

    const/16 v1, 0xc0

    aput v1, v0, v5

    const/16 v1, 0x1b

    const/16 v2, 0xe0

    aput v2, v0, v1

    .line 134
    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 139
    const/16 v0, 0x1e

    new-array v0, v0, [I

    const/4 v1, 0x1

    .line 140
    const/4 v2, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 141
    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x30

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x40

    aput v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x60

    aput v2, v0, v1

    const/16 v1, 0x80

    aput v1, v0, v3

    const/16 v1, 0xc0

    aput v1, v0, v4

    const/16 v1, 0x10

    const/16 v2, 0x100

    aput v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x180

    aput v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x200

    aput v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x300

    aput v2, v0, v1

    const/16 v1, 0x14

    .line 142
    const/16 v2, 0x400

    aput v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x600

    aput v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x800

    aput v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0xc00

    aput v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x1000

    aput v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x1800

    aput v2, v0, v1

    const/16 v1, 0x2000

    aput v1, v0, v5

    const/16 v1, 0x1b

    const/16 v2, 0x3000

    aput v2, v0, v1

    const/16 v1, 0x4000

    aput v1, v0, v6

    const/16 v1, 0x6000

    aput v1, v0, v7

    .line 139
    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bi_reverse(II)I
    .locals 2
    .parameter "code"
    .parameter "len"

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, res:I
    :cond_0
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 358
    ushr-int/lit8 p0, p0, 0x1

    .line 359
    shl-int/lit8 v0, v0, 0x1

    .line 361
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    .line 362
    ushr-int/lit8 v1, v0, 0x1

    return v1
.end method

.method static d_code(I)I
    .locals 2
    .parameter "dist"

    .prologue
    .line 149
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    ushr-int/lit8 v1, p0, 0x7

    add-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method static gen_codes([SI[S)V
    .locals 8
    .parameter "tree"
    .parameter "max_code"
    .parameter "bl_count"

    .prologue
    .line 324
    const/16 v5, 0x10

    new-array v4, v5, [S

    .line 325
    .local v4, next_code:[S
    const/4 v1, 0x0

    .line 331
    .local v1, code:S
    const/4 v0, 0x1

    .local v0, bits:I
    :goto_0
    const/16 v5, 0xf

    if-le v0, v5, :cond_0

    .line 341
    const/4 v3, 0x0

    .local v3, n:I
    :goto_1
    if-le v3, p1, :cond_1

    .line 347
    return-void

    .line 332
    .end local v3           #n:I
    :cond_0
    add-int/lit8 v5, v0, -0x1

    aget-short v5, p2, v5

    add-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x1

    int-to-short v1, v5

    aput-short v1, v4, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .restart local v3       #n:I
    :cond_1
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v2, p0, v5

    .line 343
    .local v2, len:I
    if-nez v2, :cond_2

    .line 341
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 345
    :cond_2
    mul-int/lit8 v5, v3, 0x2

    aget-short v6, v4, v2

    add-int/lit8 v7, v6, 0x1

    int-to-short v7, v7

    aput-short v7, v4, v2

    invoke-static {v6, v2}, Lcom/jcraft/jzlib/Tree;->bi_reverse(II)I

    move-result v6

    int-to-short v6, v6

    aput-short v6, p0, v5

    goto :goto_2
.end method


# virtual methods
.method build_tree(Lcom/jcraft/jzlib/Deflate;)V
    .locals 14
    .parameter "s"

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 236
    iget-object v7, p0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 237
    .local v7, tree:[S
    iget-object v9, p0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v6, v9, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 238
    .local v6, stree:[S
    iget-object v9, p0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v0, v9, Lcom/jcraft/jzlib/StaticTree;->elems:I

    .line 240
    .local v0, elems:I
    const/4 v2, -0x1

    .line 246
    .local v2, max_code:I
    iput v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 247
    const/16 v9, 0x23d

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 249
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 263
    :cond_0
    :goto_1
    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-lt v9, v13, :cond_3

    .line 270
    iput v2, p0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 275
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    div-int/lit8 v3, v8, 0x2

    :goto_2
    if-ge v3, v12, :cond_5

    .line 281
    move v4, v0

    .line 284
    .local v4, node:I
    :goto_3
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v8, v12

    .line 285
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v11, v10, -0x1

    iput v11, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    aget v9, v9, v10

    aput v9, v8, v12

    .line 286
    invoke-virtual {p1, v7, v12}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 287
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v1, v8, v12

    .line 289
    .local v1, m:I
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aput v3, v8, v9

    .line 290
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aput v1, v8, v9

    .line 293
    mul-int/lit8 v8, v4, 0x2

    mul-int/lit8 v9, v3, 0x2

    aget-short v9, v7, v9

    mul-int/lit8 v10, v1, 0x2

    aget-short v10, v7, v10

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 294
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aget-byte v9, v9, v3

    iget-object v10, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aget-byte v10, v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 295
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    int-to-short v10, v4

    aput-short v10, v7, v9

    aput-short v10, v7, v8

    .line 298
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4           #node:I
    .local v5, node:I
    aput v4, v8, v12

    .line 299
    invoke-virtual {p1, v7, v12}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 301
    iget v8, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v8, v13, :cond_6

    .line 303
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    iget-object v10, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v10, v10, v12

    aput v10, v8, v9

    .line 308
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Tree;->gen_bitlen(Lcom/jcraft/jzlib/Deflate;)V

    .line 311
    iget-object v8, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    invoke-static {v7, v2, v8}, Lcom/jcraft/jzlib/Tree;->gen_codes([SI[S)V

    .line 312
    return-void

    .line 250
    .end local v1           #m:I
    .end local v5           #node:I
    :cond_1
    mul-int/lit8 v9, v3, 0x2

    aget-short v9, v7, v9

    if-eqz v9, :cond_2

    .line 251
    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    move v2, v3

    aput v3, v9, v10

    .line 252
    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aput-byte v8, v9, v3

    .line 249
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 255
    :cond_2
    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    aput-short v8, v7, v9

    goto :goto_4

    .line 264
    :cond_3
    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v2, v13, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_5
    aput v4, v9, v10

    .line 265
    .restart local v4       #node:I
    mul-int/lit8 v9, v4, 0x2

    aput-short v12, v7, v9

    .line 266
    iget-object v9, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aput-byte v8, v9, v4

    .line 267
    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    if-eqz v6, :cond_0

    iget v9, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-short v10, v6, v10

    sub-int/2addr v9, v10

    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    goto/16 :goto_1

    .end local v4           #node:I
    :cond_4
    move v4, v8

    .line 264
    goto :goto_5

    .line 276
    :cond_5
    invoke-virtual {p1, v7, v3}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 275
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .restart local v1       #m:I
    .restart local v5       #node:I
    :cond_6
    move v4, v5

    .end local v5           #node:I
    .restart local v4       #node:I
    goto/16 :goto_3
.end method

.method gen_bitlen(Lcom/jcraft/jzlib/Deflate;)V
    .locals 20
    .parameter "s"

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 166
    .local v12, tree:[S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v11, v14, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 167
    .local v11, stree:[S
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v4, v14, Lcom/jcraft/jzlib/StaticTree;->extra_bits:[I

    .line 168
    .local v4, extra:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v2, v14, Lcom/jcraft/jzlib/StaticTree;->extra_base:I

    .line 169
    .local v2, base:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v8, v14, Lcom/jcraft/jzlib/StaticTree;->max_length:I

    .line 175
    .local v8, max_length:I
    const/4 v10, 0x0

    .line 177
    .local v10, overflow:I
    const/4 v3, 0x0

    .local v3, bits:I
    :goto_0
    const/16 v14, 0xf

    if-le v3, v14, :cond_1

    .line 181
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aget v14, v14, v15

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x0

    aput-short v15, v12, v14

    .line 183
    move-object/from16 v0, p1

    iget v14, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v6, v14, 0x1

    .local v6, h:I
    :goto_1
    const/16 v14, 0x23d

    if-lt v6, v14, :cond_2

    .line 199
    if-nez v10, :cond_7

    .line 227
    :cond_0
    return-void

    .line 177
    .end local v6           #h:I
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    const/4 v15, 0x0

    aput-short v15, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .restart local v6       #h:I
    :cond_2
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v9, v14, v6

    .line 185
    .local v9, n:I
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v12, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v12, v14

    add-int/lit8 v3, v14, 0x1

    .line 186
    if-le v3, v8, :cond_3

    move v3, v8

    add-int/lit8 v10, v10, 0x1

    .line 187
    :cond_3
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-short v15, v3

    aput-short v15, v12, v14

    .line 190
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    if-le v9, v14, :cond_5

    .line 183
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 192
    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v15, v14, v3

    add-int/lit8 v15, v15, 0x1

    int-to-short v15, v15

    aput-short v15, v14, v3

    .line 193
    const/4 v13, 0x0

    .line 194
    .local v13, xbits:I
    if-lt v9, v2, :cond_6

    sub-int v14, v9, v2

    aget v13, v4, v14

    .line 195
    :cond_6
    mul-int/lit8 v14, v9, 0x2

    aget-short v5, v12, v14

    .line 196
    .local v5, f:S
    move-object/from16 v0, p1

    iget v14, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int v15, v3, v13

    mul-int/2addr v15, v5

    add-int/2addr v14, v15

    move-object/from16 v0, p1

    iput v14, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 197
    if-eqz v11, :cond_4

    move-object/from16 v0, p1

    iget v14, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    mul-int/lit8 v15, v9, 0x2

    add-int/lit8 v15, v15, 0x1

    aget-short v15, v11, v15

    add-int/2addr v15, v13

    mul-int/2addr v15, v5

    add-int/2addr v14, v15

    move-object/from16 v0, p1

    iput v14, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    goto :goto_2

    .line 204
    .end local v5           #f:S
    .end local v9           #n:I
    .end local v13           #xbits:I
    :cond_7
    add-int/lit8 v3, v8, -0x1

    .line 205
    :goto_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v14, v14, v3

    if-eqz v14, :cond_9

    .line 206
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v15, v14, v3

    add-int/lit8 v15, v15, -0x1

    int-to-short v15, v15

    aput-short v15, v14, v3

    .line 207
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    add-int/lit8 v15, v3, 0x1

    aget-short v16, v14, v15

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v14, v15

    .line 208
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v15, v14, v8

    add-int/lit8 v15, v15, -0x1

    int-to-short v15, v15

    aput-short v15, v14, v8

    .line 211
    add-int/lit8 v10, v10, -0x2

    .line 213
    if-gtz v10, :cond_7

    .line 215
    move v3, v8

    :goto_4
    if-eqz v3, :cond_0

    .line 216
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v9, v14, v3

    .line 217
    .restart local v9       #n:I
    :cond_8
    :goto_5
    if-nez v9, :cond_a

    .line 215
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 205
    .end local v9           #n:I
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 218
    .restart local v9       #n:I
    :cond_a
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v6, v6, -0x1

    aget v7, v14, v6

    .line 219
    .local v7, m:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    if-gt v7, v14, :cond_8

    .line 220
    mul-int/lit8 v14, v7, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v12, v14

    if-eq v14, v3, :cond_b

    .line 221
    move-object/from16 v0, p1

    iget v14, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    int-to-long v14, v14

    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-int/lit8 v18, v7, 0x2

    add-int/lit8 v18, v18, 0x1

    aget-short v18, v12, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    mul-int/lit8 v18, v7, 0x2

    aget-short v18, v12, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v14, v14

    move-object/from16 v0, p1

    iput v14, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 222
    mul-int/lit8 v14, v7, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-short v15, v3

    aput-short v15, v12, v14

    .line 224
    :cond_b
    add-int/lit8 v9, v9, -0x1

    goto :goto_5
.end method
