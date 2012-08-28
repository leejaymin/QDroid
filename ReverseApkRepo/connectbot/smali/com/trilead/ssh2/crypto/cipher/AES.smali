.class public Lcom/trilead/ssh2/crypto/cipher/AES;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Lcom/trilead/ssh2/crypto/cipher/BlockCipher;


# static fields
.field private static final S:[B

.field private static final Si:[B

.field private static final T0:[I

.field private static final T1:[I

.field private static final T2:[I

.field private static final T3:[I

.field private static final Tinv0:[I

.field private static final Tinv1:[I

.field private static final Tinv2:[I

.field private static final Tinv3:[I

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private doEncrypt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x1e

    .line 64
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    aput-byte v1, v0, v4

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/16 v1, 0x7b

    aput-byte v1, v0, v6

    const/16 v1, -0xe

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 65
    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    .line 66
    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    .line 67
    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    aput-byte v1, v0, v3

    const/16 v1, 0x1f

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    .line 68
    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    .line 69
    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v7, v0, v1

    const/16 v1, 0x31

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 70
    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    .line 71
    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    .line 72
    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 73
    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    .line 74
    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 75
    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    .line 76
    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    aput-byte v5, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    .line 77
    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 78
    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    .line 79
    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    .line 80
    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    .line 81
    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    .line 82
    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    .line 83
    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    .line 84
    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    .line 85
    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    .line 86
    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    .line 87
    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    .line 88
    aput-byte v6, v0, v1

    const/16 v1, 0xd6

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    .line 89
    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    .line 90
    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    .line 91
    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    .line 92
    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    .line 64
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    .line 95
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v1, v0, v4

    const/16 v1, 0x6a

    aput-byte v1, v0, v5

    const/16 v1, -0x2b

    aput-byte v1, v0, v6

    const/16 v1, 0x30

    aput-byte v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x5b

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 96
    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    .line 97
    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    .line 98
    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, -0x17

    aput-byte v1, v0, v3

    const/16 v1, 0x1f

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    .line 99
    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    .line 100
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    .line 101
    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, -0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    .line 102
    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 103
    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 104
    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, -0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    .line 105
    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, -0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    .line 106
    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, -0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    .line 107
    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    .line 108
    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, -0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v5, v0, v1

    const/16 v1, 0x78

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v6, v0, v1

    const/16 v1, 0x7c

    .line 109
    aput-byte v4, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, -0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    .line 110
    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, -0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    .line 111
    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, -0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    .line 112
    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x98

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    .line 113
    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    .line 114
    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    .line 115
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    .line 116
    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, -0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    .line 117
    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xc8

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    .line 118
    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    .line 119
    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    .line 120
    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    .line 121
    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    .line 122
    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    aput-byte v7, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    .line 123
    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    .line 95
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    .line 126
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->rcon:[I

    .line 130
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x5a9c9c3a

    aput v2, v0, v1

    const v1, -0x7b838308

    aput v1, v0, v4

    const v1, -0x66888812

    aput v1, v0, v5

    const v1, -0x7284840a

    aput v1, v0, v6

    const v1, 0xdf2f2ff

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x4294942a

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 131
    const v2, -0x4e909022

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x54c5c591

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x50303060

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x3010102

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x56989832

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7d2b2b56

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x19fefee7

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x62d7d7b5

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x195454b3

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 132
    const v2, -0x65898914

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x45caca8f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x627d7de1

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x40c9c989

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x78828206

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x15fafaef

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x14a6a64e

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x36b8b872

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0xbf0f0fb

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 133
    const v2, -0x135252bf

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x67d4d4b3

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x25d5da1

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x155050bb

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x406363dd

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x85b5bad

    aput v2, v0, v1

    const v1, -0x698d8d1c

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, 0x5bc0c09b

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x3d48488b

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 134
    const v2, 0x1cfdfde1

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x516c6cc3

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x6a26264c

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x5a36366c

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x413f3f7e

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x2f7f7f5

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x4fcccc83

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x5c343468

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0xb5a5aaf

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 135
    const v2, 0x34e5e5d1

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x8f1f1f9

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x6c8e8e1e

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x73d8d8ab

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x53313162

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x3f15152a

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0xc040408

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x52c7c795

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x65232346

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 136
    const v2, 0x5ec3c39d

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x28181830

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x5e6969c9

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xf05050a

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x4a6565d1

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x907070e

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x36121224

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x647f7fe5

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x3de2e2df

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 137
    const v2, 0x26ebebcd

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x6927274e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x324d4d81

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x608a8a16

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x1b090912

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x617c7ce3

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x742c2c58

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x2e1a1a34

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x2d1b1b36

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 138
    const v2, -0x4d919124

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x11a5a54c

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x45f5fa5

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x9adad5c

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x4d3b3b76

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x61d6d6b7

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x314c4c83

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x7b292952

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x3ee3e3dd

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 139
    const v2, 0x712f2f5e

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x687b7bed

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0xaacac5a

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x68d1d1b9

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x2cededc1

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x60202040

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x1ffcfce3

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x374e4e87

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 140
    const v2, -0x12a4a44a

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x4195952c

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x46cbcb8d

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x26414199

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x4b393972

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x21b5b56c

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x2bb3b368

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x17a7a750

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x4acfcf85

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 141
    const v2, 0x6bd0d0bb

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x2aefefc5

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x1a5555b1

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x16fbfbed

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x3abcbc7a

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x28b2b266

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x55333366

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x6b7a7aef

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x30baba76

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 142
    const v2, 0x10f9f9e9

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x6020204

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x7e808002

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0xfafaf60

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x443c3c78

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x456060db

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x1c5757b5

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0xcaeae5e

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x15c5ca3

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 143
    const v2, -0x3fbfbf80

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x757070fb

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x526d6dc1

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x436262df

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x48383870

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x4f5f5f1

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x2043439d

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x3e494989

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x75dadaaf

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 144
    const v2, 0x63212142

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x30101020

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x1affffe5

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xef3f3fd

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x6dd2d2bf

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x4ccdcd81

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x140c0c18

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x35131326

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x2fececc3

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 145
    const v2, -0x1ea0a042

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x5d6868cb

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x33bbbb78

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x3917172e

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x57c4c493

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0xd5858ab

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x7d818104

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x473d3d7a

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x539b9b38

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 146
    const v2, -0x18a2a246

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x2b191932

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x6a8c8c1a

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x5f9f9f40

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x677e7ee7

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x2eb0b062

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x7fdcdca3

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x66222244

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x7e2a2a54

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 147
    const v2, -0x546f6fc5

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x7c7777f5

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x35b9b974

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x29eeeec7

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x2c474795

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x3c141428

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x79dedea7

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x1da1a144

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x1d0b0b16

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 148
    const v2, 0x76dbdbad

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x3be0e0db

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x56323264

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x4e3a3a74

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x1e0a0a14

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x24b6b66e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xa06060c

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x6c242448

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x1ba3a348

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 149
    const v2, 0x5dc2c29f

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x6ed3d3bd

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x105353bd

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x599d9d3c

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x576e6ec7

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x5b6a6acf

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x37e4e4d3

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x7486860e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x32e7e7d5

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 150
    const v2, 0x43c8c88b

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x5937376e

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x48929226

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x737272ff

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x64d5d5b1

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x2db1b164

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x1f5656b7

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x4b939328

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x5a9a954

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 151
    const v2, 0x7f4f4f3

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x25eaeacf

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x509a9a36

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x7185850c

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x165151b9

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x18080810

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x2a454591

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x77878710

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x6f25254a

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 152
    const v2, 0x722e2e5c

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x241c1c38

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0xe5959a9

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x384b4b8d

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x51c6c697

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x23e8e8cb

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x7cdddda1

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x638b8b18

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x211f1f3e

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 153
    const v2, -0x22b4b46a

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2342429f

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x797474f3

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x7a7575f1

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x6f8f8f20

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x423e3e7c

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x3b4a4a8f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x55999934

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x27b7b770

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 154
    const v2, 0x5030306

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x1f6f6f7

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x120e0e1c

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x5c9e9e3e

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5f35356a

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x6a8a852

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x2f464697

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x6e7979e9

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x58c1c199

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 155
    const v2, 0x271d1d3a

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x466161d9

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x38e1e1d9

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x13f8f8eb

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x4c6767d5

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x33111122

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x4496962e

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x70d9d9a9

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x767171f9

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 156
    const v2, -0x586b6bcd

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x496464d3

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x221e1e3c

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x6d7878eb

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x20e9e9c9

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x49cece87

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0xaaaa56

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x78282850

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x7adfdfa5

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 157
    const v2, -0x707373fd

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x75e5ea7

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x7f7676f7

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x170d0d1a

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x2540409b

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x31e6e6d7

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x39bdbd7c

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x47979730

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x3cbebe7e

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 158
    const v2, -0x4f6666d7

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x772d2d5a

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x110f0f1e

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x344f4f85

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x3abab58

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x29444493

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x3a16162c

    aput v2, v0, v1

    .line 130
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    .line 160
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x6363c6a5

    aput v2, v0, v1

    const v1, 0x7c7cf884

    aput v1, v0, v4

    const v1, 0x7777ee99

    aput v1, v0, v5

    const v1, 0x7b7bf68d

    aput v1, v0, v6

    const v1, -0xd0d00f3

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x6b6bd6bd

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 161
    const v2, 0x6f6fdeb1

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x3a3a6eac

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x30306050

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1010203

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x6767cea9

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x2b2b567d

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x10118e7

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x28284a9e

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x5454b21a

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 162
    const v2, 0x7676ec9a

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x353570bb

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x7d7de063

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x363676c0

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7d7dfa87

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x50510eb

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x5959b2eb

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x47478ec9

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0xf0f04f5

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 163
    const v2, -0x5252be14

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x2b2b4c99

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x5d5da003

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x5050ba16

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x6363dc41

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x5b5bac09

    aput v2, v0, v1

    const v1, 0x7272e496

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, -0x3f3f64a5

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x48488a3e

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 164
    const v2, -0x2021ee4

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x6c6cc252

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x26264c6a

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x36366c5a

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x3f3f7e41

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x8080afe

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x33337cb1

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x3434685c

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x5a5aae0c

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 165
    const v2, -0x1a1a2ecc

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0xe0e06f8

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x7171e293

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x2727548d

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x31316253

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x15152a3f

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x404080c

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x38386aae

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x23234665

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 166
    const v2, -0x3c3c62a2

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x18183028

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x6969c85f

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x5050a0f

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x6565d04b

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x7070e09

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x12122436

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7f7fe465

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x1d1d20c3

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 167
    const v2, -0x141432da

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x27274e69

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x4d4d8033

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x7575ea9f

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x909121b

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x7c7ce262

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x2c2c5874

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x1a1a342e

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x1b1b362d

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 168
    const v2, 0x6e6edcb2

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x5a5ab4ee

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x5f5fa405

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x5252a4f6

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x3b3b764d

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x2929489f

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x4c4c8232

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x2929527b

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x1c1c22c2

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 169
    const v2, 0x2f2f5e71

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x7b7bec69

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x5353a6f5

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x2e2e4698

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x12123ed4

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x20204060

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x3031ce1

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x4e4e8638

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 170
    const v2, 0x5b5bb6ed

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x6a6ad4be

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x343472ba

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x41419827

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x3939724b

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x4a4a94de

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x4c4c98d4

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x5858b0e8

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x30307ab6

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 171
    const v2, -0x2f2f4495

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x10103ad6

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x5555b01b

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x40412ea

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x434386c5

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x4d4d9ad7

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x33336655

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x7a7aee6c

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x45458acf

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 172
    const v2, -0x60616f0

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x2020406

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x7f7ffe81

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x5050a0f0

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x3c3c7844

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x6060da46

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x5757b41d

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x5151a2f3

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x5c5ca202

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 173
    const v2, 0x404080c0

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x7070fa76

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x6d6dc053

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x6262de44

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x38387048

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0xa0a0efc

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x43439c21

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x4949883f

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x2525508b

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 174
    const v2, 0x21214263

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x10102030

    aput v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, -0x1ae6

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0xc0c02f2

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x2d2d4093

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x32327eb4

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xc0c1814

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x13132635

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x13133cd1

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 175
    const v2, 0x5f5fbee1

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x6868ca5e

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x444488cc

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x17172e39

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x3b3b6ca9

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x5858aa0e

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x7e7efc82

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x3d3d7a47

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x6464c8ac

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 176
    const v2, 0x5d5dbae7

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x1919322b

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x7373e695

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x6060c0a0

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x7e7ee668

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x4f4f9ed1

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x23235c81

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x22224466

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x2a2a547e

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 177
    const v2, -0x6f6fc455

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x7777f47d

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x46468cca

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x111138d7

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x4747942d

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x1414283c

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x21215887

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x5e5ebce2

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xb0b161d

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 178
    const v2, -0x2424528a

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x1f1f24c5

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x32326456

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x3a3a744e

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xa0a141e

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x494992db

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x6060c0a

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x2424486c

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x5c5cb8e4

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 179
    const v2, -0x3d3d60a3

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x2c2c4292

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x5353bc11

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x6262c4a6

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x6e6ec658

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x6a6ace5c

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x1b1b2cc9

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x7979f28b

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x18182ace

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 180
    const v2, -0x373774bd

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x37376e59

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x6d6ddab7

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x7272fe74

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x2a2a4e9c

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x4e4e9cd2

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x5656b620

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x6c6cd8b4

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x5656acfa

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 181
    const v2, -0xb0b0cf9

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x151530db

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x6565caaf

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x7a7af48e

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x5151b817

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x8081018

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x4545902b

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x7878f088

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x25254a6f

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 182
    const v2, 0x2e2e5c72

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x1c1c3824

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x5959a80f

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x4b4b8c39

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x393968af

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x171734dd

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x22225e84

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x7474e89c

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x1f1f3e21

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 183
    const v2, 0x4b4b96dd

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x42429e24

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x7474f27a

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x7575f07b

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x7070e090

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x3e3e7c42

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x4a4a8e3c

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x6666ccaa

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x484890d8

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 184
    const v2, 0x3030605

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x90908ff

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xe0e1c12

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x6161c2a3

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x35356a5f

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x5757aef9

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x46469630

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x7979e86f

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x3e3e66a8

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 185
    const v2, 0x1d1d3a27

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x6161d847

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x1e1e26c8

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x70714ed

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x6767d44d

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x11112233

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x6969d2bb

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x26265690

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x7171f877

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 186
    const v2, -0x6b6bcc59

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x6464d24a

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x1e1e3c22

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x7878ea6e

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x161636e0

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x313178b7

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x5555aaff

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x28285078

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x20205a86

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 187
    const v2, -0x7373fc71

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x5e5ea608

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x7676f680

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xd0d1a17

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x40409a26

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x191928cf

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x424284c6

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x6868d0b8

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x414182c3

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 188
    const v2, -0x6666d650

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x2d2d5a77

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0xf0f1e11

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x4f4f8435

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x5454a8fc

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x4444922a

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x16162c3a

    aput v2, v0, v1

    .line 160
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    .line 190
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x63c6a563

    aput v2, v0, v1

    const v1, 0x7cf8847c

    aput v1, v0, v4

    const v1, 0x77ee9977

    aput v1, v0, v5

    const v1, 0x7bf68d7b

    aput v1, v0, v6

    const v1, -0xd00f20e

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x6bd6bd6b

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 191
    const v2, 0x6fdeb16f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x3a6eab3b

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x30605030

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1020301

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x67cea967

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x2b567d2b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x118e602

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x284a9d29

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x54b21955

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 192
    const v2, 0x76ec9a76

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x3570ba36

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x7de0627e

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x3676bf37

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7dfa877d

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x510ea06

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x59b2eb59

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x478ec947

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0xf04f410

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 193
    const v2, -0x52be1353

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x2b4c982c

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x5da0025e

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x50ba1551

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x63dc4064

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x5bac085c

    aput v2, v0, v1

    const v1, 0x72e49672

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, -0x3f64a440

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x488a3d49

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 194
    const v2, -0x21ee303

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x6cc2516d

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x264c6a26

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x366c5a36

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x3f7e413f

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x80afd09

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x337cb034

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x34685c34

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x5aae0b5b

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 195
    const v2, -0x1a2ecb1b

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0xe06f70f

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x71e29371

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x27548c28

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x31625331

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x152a3f15

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x4080c04

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x386aad39

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x23466523

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 196
    const v2, -0x3c62a13d

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x18302818

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x69c85e6a

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x50a0f05

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x65d04a66

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x70e0907

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x12243612

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7fe46480

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x1d20c21e

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 197
    const v2, -0x1432d915

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x274e6927

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x4d80324e

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x75ea9f75

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x9121b09

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x7ce2617d

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x2c58742c

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x1a342e1a

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x1b362d1b

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 198
    const v2, 0x6edcb26e

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x5ab4ee5a

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x5fa40460

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x52a4f652

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x3b764d3b

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x29489e2a

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x4c82314d

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x29527b29

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x1c22c11d

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 199
    const v2, 0x2f5e712f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x7bec687c

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x53a6f553

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x2e46972f

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x123ed313

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x20406020

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x31ce004

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x4e86374f

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 200
    const v2, 0x5bb6ed5b

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x6ad4be6a

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x3472b935

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x41982642

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x39724b39

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x4a94de4a

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x4c98d44c

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x58b0e858

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x307ab531

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 201
    const v2, -0x2f449430

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x103ad511

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x55b01a56

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x412e905

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x4386c543

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x4d9ad74d

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x33665533

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, -0x7aee6b7b

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0x458acf45

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 202
    const v2, -0x616ef07

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x2040602

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x7ffe817f

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x50a0f050

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x3c78443c

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x60da4561

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, -0x57b41c58

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x51a2f351

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x5ca2015d

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 203
    const v2, 0x4080c040

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x70fa7571

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x6dc0526e

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x62de4363

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x38704838

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0xa0efb0b

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x439c2044

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x49883e4a

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x25508a26

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 204
    const v2, 0x21426321

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x10203010

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x1ae501

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0xc02f10d

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x2d40922e

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x327eb333

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xc18140c

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x13263513

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x133cd014

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 205
    const v2, 0x5fbee15f

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x68ca5d69

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x4488cc44

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x172e3917

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x3b6ca83c

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x58aa0d59

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x7efc827e

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x3d7a473d

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x64c8ac64

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 206
    const v2, 0x5dbae75d

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x19322b19

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x73e69573

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x60c0a060

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x7ee6677f

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x4f9ed14f

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x235c8024

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x22446622

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x2a547e2a

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 207
    const v2, -0x6fc45470

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x77f47c78

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x468cca46

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x1138d612

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x47942c48

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x14283c14

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x21588622

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x5ebce25e

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xb161d0b

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 208
    const v2, -0x24528925

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x1f24c420

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x32645632

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x3a744e3a

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xa141e0a

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x4992db49

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x60c0a06

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x24486c24

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x5cb8e45c

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 209
    const v2, -0x3d60a23e

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x2c42912d

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x53bc1054

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x62c4a662

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x6ec6576f

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x6ace5b6b

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x1b2cc81c

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x79f28b79

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x182acd19

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 210
    const v2, -0x3774bc38

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x376e5937

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x6ddab76d

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x72fe7373

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x2a4e9b2b

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x4e9cd24e

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x56b61f57

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x6cd8b46c

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x56acfa56

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 211
    const v2, -0xb0cf80c

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x1530da16

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x65caaf65

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x7af48e7a

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x51b81652

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x8101808

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x45902a46

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x78f08878

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x254a6f25

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 212
    const v2, 0x2e5c722e

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x1c38241c

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0x59a80e5a

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x4b8c384c

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x3968ae3a

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x1734dc18

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x225e8323

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, 0x74e89c74

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x1f3e211f

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 213
    const v2, 0x4b96dd4b

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x429e2343

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x74f27975

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x75f07a76

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x70e09070

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x3e7c423e

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x4a8e3b4b

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x66ccaa66

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0x4890d848

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 214
    const v2, 0x3060503

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x908fe0a

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xe1c120e

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x61c2a361

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x356a5f35

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x57aef957

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x46962f47

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x79e86e7a

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x3e66a73f

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 215
    const v2, 0x1d3a271d

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x61d84662

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x1e26c71f

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x714ec08

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x67d44c68

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x11223311

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x69d2bb69

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x26568f27

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x71f87672

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 216
    const v2, -0x6bcc586c

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x64d24965

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x1e3c221e

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x78ea6d79

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x1636df17

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x3178b632

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x55aaff55

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x28507828

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x205a8521

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 217
    const v2, -0x73fc7074

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x5ea6075f

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x76f67f77

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xd1a170d

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x409a2541

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x1928ce1a

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x4284c642

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x68d0b868

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x4182c341

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 218
    const v2, -0x66d64f67

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x2d5a772d

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0xf1e110f

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x4f843450

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x54a8fc54

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x44922945

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x162c3a16

    aput v2, v0, v1

    .line 190
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    .line 220
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x395a9c9d

    aput v2, v0, v1

    const v1, -0x77b8384

    aput v1, v0, v4

    const v1, -0x11668889

    aput v1, v0, v5

    const v1, -0x9728485

    aput v1, v0, v6

    const v1, -0xf20d0e

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x29429495

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 221
    const v2, -0x214e9091

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x6eab3a3b

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x60503030

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x2030101

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x31569899

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x567d2b2b

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x18e60102

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x4a9d2829

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4de6abab

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 222
    const v2, -0x1365898a

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x70ba3536

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x1f9d8282

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x76bf3637

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x5788283

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x10ea0506

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x4d14a6a7

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x7136b8b9

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x4f40f10

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 223
    const v2, 0x41ecadad

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x4c982b2c

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x5ffda2a2

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x45eaafaf

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x23bf9c9c

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x53f7a4a4

    aput v2, v0, v1

    const v1, -0x1b698d8e

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, -0x64a43f40

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x75c2b7b7

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 224
    const v2, -0x1ee30203

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x3dae9393

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x4c6a2626

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x6c5a3636

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7e413f3f

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0xafd0809

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x7cb03334

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x685c3434

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x51f4a5a5

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 225
    const v2, -0x2ecb1a1b

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, -0x6f70e0f

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x1d6c8e8f

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x548c2728

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x62533131

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x2a3f1515

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x80c0404

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x6aad3839

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x46652323

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 226
    const v2, -0x62a13c3d

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x30281818

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x37a19696

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xa0f0505

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x2fb59a9a

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xe090707

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x24361212

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x1b9b8080

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x20c21d1e

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 227
    const v2, -0x32d91415

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x4e692727

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x7fcdb2b2

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x15608a8b

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x121b0909

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x1d9e8383

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x58742c2c

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x342e1a1a

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x362d1b1b

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 228
    const v2, -0x234d9192

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x4b11a5a6

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x5bfba0a0

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x5b09adae

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x764d3b3b

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x489e292a

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x7dceb3b3

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x527b2929

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x22c11c1d

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 229
    const v2, 0x5e712f2f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x13978484

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x590aacad

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x46972e2f

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x3ed31213

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x40602020

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x1ce00304

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x79c8b1b1

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 230
    const v2, -0x4912a4a5

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x2b419596

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x72b93435

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x67d9bebe

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x724b3939

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x6b21b5b6

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x672bb3b4

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x4f17a7a8

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x7ab53031

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 231
    const v2, -0x44942f30

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x3ad51011

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x4fe5aaaa

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, -0x12e90405

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x793abcbd

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x6528b2b3

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x66553333

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x11948585

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x7530babb

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 232
    const v2, -0x16ef0607

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x4060202

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, -0x17e8081

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x5f0fafb0

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x78443c3c

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x25ba9f9f

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x4be3a8a8

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x5d0caeaf

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x5dfea3a3

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 233
    const v2, -0x7f3fbfc0

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x58a8f8f

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x3fad9292

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x21bc9d9d

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x70483838

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, -0xefb0a0b

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x63dfbcbc

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x77c1b6b6

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x508a2526

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 234
    const v2, 0x42632121

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x20301010

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x1ae50001

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x2f10c0d

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x40922d2e

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x7eb33233

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x18140c0c

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x26351313

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x3cd01314

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 235
    const v2, -0x411ea0a1

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x35a29797

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x7733bbbc

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x2e391717

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x6ca83b3c

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x55f2a7a7

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x37d8182

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x7a473d3d

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x37539b9c

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 236
    const v2, -0x4518a2a3

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x322b1919

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x196a8c8d

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x3f5f9fa0

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x19988181

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x612eb0b1

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x5c802324

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x44662222

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x547e2a2a

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 237
    const v2, 0x3bab9090

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xb838888

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x7335b9ba

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x38d61112

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x6bd3b8b8

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x283c1414

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x58862122

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x431da1a2

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x161d0b0b

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 238
    const v2, -0x52892425

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x24c41f20

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x64563232

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x744e3a3a

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x141e0a0a

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x6d24b6b7

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xc0a0606

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x486c2424

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x471ba3a4

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 239
    const v2, -0x60a23d3e

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x42912c2d

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x43efacac

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x3b599d9e

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x39a89191

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0x31a49595

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x2cc81b1c

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0xd748687

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x2acd1819

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 240
    const v2, -0x74bc3738

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x6e593737

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x25489293

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x18c8d8d

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x4e9b2a2b

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x632db1b2

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x49e0a9a9

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x274b9394

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x5305a9aa

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 241
    const v2, -0xcf80b0c

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x30da1516

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x35509a9b

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0xb718586

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x47e9aeae

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x10180808

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0x6fd5baba

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0xf778788

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x4a6f2525

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 242
    const v2, 0x5c722e2e

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x38241c1c

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x57f1a6a6

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x73c7b4b4

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x68ae393a

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x34dc1718

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x5e832223

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x17638b8c

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x3e211f1f

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 243
    const v2, -0x6922b4b5

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x61dcbdbd

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0xd868b8b

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0xf858a8a

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x1f6f8f90

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x7c423e3e

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x71c4b5b5

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x3355999a

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x6f27b7b8

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 244
    const v2, 0x6050303

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x8fe090a

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x1c120e0e

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x3d5c9e9f

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x6a5f3535

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x5106a8a9

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x69d0b9b9

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x17918686

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x66a73e3f

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 245
    const v2, 0x3a271d1d

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x27b99e9e

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x26c71e1f

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x14ec0708

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x2bb39898

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x22331111

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x2d449697

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x568f2627

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x7898e8e

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 246
    const v2, 0x33a79494

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x2db69b9b

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x3c221e1e

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x15928787

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x36df1617

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x78b63132

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x5500aaab

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x50782828

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x5a852021

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 247
    const v2, 0x38f8c8c

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x59f8a1a1

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x9808989

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x1a170d0d

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x65dabfbf

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x28ce191a

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x7b39bdbe

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x2f479798

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x7d3cbebf

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 248
    const v2, 0x29b09999

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x5a772d2d

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x1e110f0f

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x7bcbb0b0

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x5703abac

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x6dd6bbbb

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x2c3a1616

    aput v2, v0, v1

    .line 220
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    .line 250
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x50a7f451

    aput v2, v0, v1

    const v1, 0x5365417e

    aput v1, v0, v4

    const v1, -0x3c5be8e6

    aput v1, v0, v5

    const v1, -0x69a1d8c6

    aput v1, v0, v6

    const v1, -0x349454c5

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0xeba62e1

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 251
    const v2, -0x54a70554

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x6cfc1cb5

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x55fa3020

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x9928953

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x6e893378

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x254c02f5

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x3281ab1

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x2834d53b

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, -0x7fbbcada

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 252
    const v2, -0x705c9d4b

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x495ab1de

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x671bba25

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x67f115bb

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x1e3f01a3

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x2752fc3

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x12f04c81

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x5c68b973

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x39062c95

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 253
    const v2, -0x18a070fd

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x6a636deb

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x14859241

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x25a6ad6b

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2d83bed4

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, -0x2cde8ba8

    aput v2, v0, v1

    const v1, 0x2969e049

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, 0x44c8c98e

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x6a89c275

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 254
    const v2, 0x78798ef4

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x6b3e5899

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x228e46d9

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x49b01e42

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x17ad88f0

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x66ac20c9

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x4bc53183

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x184adf63

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x7dcee51b

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 255
    const v2, 0x60335197

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x457f5362

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x1f889b4f

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x7b519445

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x1ca081fe

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x6bd4f707

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x58684870

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x19fd458f

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x7893216c

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 256
    const v2, -0x480784ae

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x23d373ab

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, -0x1dfdb48e

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x578f1fe3

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x2aab5566

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x728ebb2

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x3c2b52f

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x65843a7a

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x5af7c82d

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 257
    const v2, -0xd78d7d0

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x4d5a40dd

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, -0x4595fcfe

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x5c8216ed

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x2b1ccf8a

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x6d4b8659

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0xf0df80d

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x5e1d96b2

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x320b259b

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 258
    const v2, -0x2a41fafa

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x1f6234d1

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x7501593c

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, -0x62acd1cc

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x5faa0c5e

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x32e18a05

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x75ebf6a4

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x39ec830b

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x55109fc0

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 259
    const v2, 0x69f715e

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x51106ebd

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x675dec2

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x3d06dd96

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x51fac123

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x46bde64d

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x4a72ab6f

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x55dc471

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x6fd40604

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 260
    const v2, -0xeaafa0

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x24fb9819

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x6816422a

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x33bcbf77

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x779ed967

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x42bd1750

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x777476f9

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x385b19e7

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x24113787

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 261
    const v2, 0x470a7ca1

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, -0x16f0bd84

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x36e17b08

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x7c797ff7

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x48ed2b32

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, -0x538feee2

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x4e725a6c

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x400f103

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 262
    const v2, 0x5638850f

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x1ed5ae3d

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x27392d36

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x64d90f0a

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x21a65c68

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x2eaba465

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x3a2e3624

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, -0x4e98f5f4

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xfe75793

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 263
    const v2, -0x2d69114c

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x616e64e5

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x4fc5c080

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x5ddf239f

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x694b775a

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x161a121c

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xaba93e2

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x1ad55f40

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x43e0223c

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 264
    const v2, 0x1d171b12

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xb0d090e

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x5238740e

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x465749d3

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x3756e1ec

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0x7ae60ea9

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x4c0775af

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x44226612

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x29f805d

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 265
    const v2, -0x60d9fe09

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x430a8da4

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x3ac499bc

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x347efb5b

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x7629438b

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x2339dc35

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x68fcedb6

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x63f1e4b8

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x3523ce29

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 266
    const v2, 0x10856342

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x40229713

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x2011c684

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x7d244a85

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x7c2442e

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x1132f9ae

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x6da129c7

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x4b2f9e1d

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0xccf4d24

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 267
    const v2, -0x13ad79f3

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x2f1c3e89

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x6c16b32b

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x66468f57

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x5b76bef

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x2264e947

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x3b730358

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x1a3ff0a0

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, -0x27d382aa

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 268
    const v2, -0x106fccde

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x38b1b679

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x3e2ec727

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x15d3574

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x360bd498

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x307e0a5a

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x28de7aa5

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x268eb7da

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x5b4052c1

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 269
    const v2, -0x1b62c5d4

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xd927850

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x6433a096

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x62467e54

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x3dec720a

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x17472770

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x5ef7392e

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0xa503c7e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x417fa261

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 270
    const v2, 0x7c93d069

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x56d22a91

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x4cedda31

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x3b99acc8

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, -0x5882e7f0

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x6e639ce8

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x7bbb3bdb

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x97826cd

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0xbe7a692

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 271
    const v2, 0x1b79aec

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x5765b07d

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x656e95e6

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x7ee6ffaa

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x8cfbc21

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x1917ea11

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x26641846

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x31c990b6

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x2bf66016

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 272
    const v2, -0x29834fd7

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x504d5bcf

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x31233f2a

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0x3094a5c6

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x3f995dcb

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x37bc4e74

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x59357d04

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x4f2f6f20

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x15d8a733

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 273
    const v2, 0x4a9804f1

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x82513bf

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0xe50cd7f

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x2ff69117

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x7229b28a

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x4db0ef43

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x544daacc

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x20fb691c

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x1c4a2e62

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 274
    const v2, 0x1b886a4c

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x47e0d33f

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x7f516546

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x4ea5e9d

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5d358c01

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x737487fa

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x2e410bfb

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x5a1d67b3

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x52d2db92

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 275
    const v2, 0x335610e9

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x1347d66d

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x739e2866

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x7a0ca137

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x71eb07a7

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x76c3ec15

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x11d85632

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x35c961b7

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x121ae31f

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 276
    const v2, 0x3cb1477a

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0x59dfd29c

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x3f73f255

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x79ce1418

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x40c8388d

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x153208ad

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x5baafd5f

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x146f3ddf

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x7924bb88

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 277
    const v2, -0x7e0c5036

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x3ec468b9

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x2c342438

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x5f40a3c2

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x72c31d16

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xc25e2bc

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x74b6c3d8

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0x41950dff

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x7101a839

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 278
    const v2, -0x214cf3f8

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x631b4b28

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x6f3ea99c

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x6184cb7b

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x70b632d5

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x745c6c48

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x4257b8d0

    aput v2, v0, v1

    .line 250
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    .line 280
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0x580baeb0

    aput v2, v0, v1

    const v1, 0x65417e53

    aput v1, v0, v4

    const v1, -0x5be8e53d

    aput v1, v0, v5

    const v1, 0x5e273a96

    aput v1, v0, v6

    const v1, 0x6bab3bcb

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x459d1ff1

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 281
    const v2, 0x58faacab

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x3e34b93

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, -0x5cfdfab

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x6d76adf6

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x76cc8891

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x4c02f525

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x281ab004

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x34d53a29

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x44352680

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 282
    const v2, -0x5c9d4a71

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x5ab1de49

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x1bba2567

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0xeea4598

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x3f01a21f

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x752fc302

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0xfb37eee

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x68b9725d

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x62c943a

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 283
    const v2, 0x5f8f03e7

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x636dea6b

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7a6dbfeb

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x595295da

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x7c412bd3

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x217458d3

    aput v2, v0, v1

    const v1, 0x69e04929

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, -0x373671bc

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x763d8a96

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 284
    const v2, 0x798ef478

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x3e58996b

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x71b927dd

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x4fe1beb6

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x52770fe9

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x53df369a

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x3ace7db4

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x4adf6318

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x311ae582

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 285
    const v2, 0x33519760

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x7f536245

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x7764b1e0

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x5194447c

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x5f7e01e4

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x2b08f994

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x68487058

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x2ba70e7

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x6cde9487

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 286
    const v2, -0x784ad49

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x2c8c54dd

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x24b72e2

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x70e01ca9

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, -0x54aa99d6

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x28ebb207

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x3d4ad0fd

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x7bc5869a

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x837d3a5

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 287
    const v2, -0x78d7cf0e

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x5a40dc4e

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x6a0302ba

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x7de912a4

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x1ccf8a2b

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x4b86586e

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0xdf80c10

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, -0x1d96b15f

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0xb259a33

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 288
    const v2, -0x41faf92b

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x6234d11f

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x1593b76

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x532e349d

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x55f3a2a0

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x1e75face

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x14095b8b

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x137cf4c7

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, -0x109fbf56

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 289
    const v2, -0x608ea1fa

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x106ebd51

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, -0x75dec107

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x6dd963d

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x53eddae

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x4219b2ba

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x72ab6e4b

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x5dc47105

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, -0x2bf9fb91

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 290
    const v2, 0x155060ff

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x467e6dc

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x16422969

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x434089cc

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x61269889

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x42e8b0bd

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x7476f878

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x5b19e738

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x11378625

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 291
    const v2, 0xa7ca147

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xf427ce9

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0x1e84f8c9

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x797ff67d

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x12d4cdb8

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x70111eac

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x725a6c4e

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0xf10205

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 292
    const v2, 0x38850f56

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x2a51c2e2

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x392d3627

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, -0x26f0f59c

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, -0x59a397df

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x545b9bd1

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x2e36243a

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0x670a0cb1

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x18a86cf1

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 293
    const v2, -0x69114b2e

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x6e64e462

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x3a3f7fb1

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x20dc61a2

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x4b775a69

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x1a121c16

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x456c1df6

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x2aa0c0e5

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, -0x1fddc3bd

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 294
    const v2, 0x171b121d

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xd090e0b

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x38740d53

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x5749d247

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, -0x56e1eb38

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x19f15785

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x775af4c

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x22661145

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x607fa3fd

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 295
    const v2, 0x2601f79f

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0xa8da344

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x3b6644c5

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x7efb5b34

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x29438b76

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x39dc3424

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x3124998

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, -0xe1b479d

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x23ce2836

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 296
    const v2, -0x7a9cbdf0

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x22971340

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x11c68420

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x244a857d

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x3dbbd2f8

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x32f9ae11

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x5ed63893

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x2f9e1d4b

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x30b2dcf3

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 297
    const v2, 0x52860dec

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x1c3e8830

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x16b32b6c

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x468f5667

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x489411fa

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x64e94722

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x7303573c

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0x3ff0a01a

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x2c7d56d8

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 298
    const v2, -0x6fccdd11

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x4e4987c7

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x2ec7263f

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x5d357302

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xbd49836

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x7e0a5931

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x21855ad8

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x714825da

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x4052c05c

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 299
    const v2, -0x62c5d31c

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, -0x6d87aff3

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x33a09565

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x467e5462

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x138df6c2

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x47276f18

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, -0x8c6d1a2

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x503c7d0b

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x7fa26042

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 300
    const v2, -0x6c2f9684

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x2dd56fa9

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x1225cfb3

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x665337c5

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x7d1810a7

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x639ce86e

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x44c42485

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x7826cd09

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x18596ef4

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 301
    const v2, -0x486513ff

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x65b07c58

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x6e95e665

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x19005582

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x3043def8

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x17ea101a

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x64184527

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x366f4ace

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x99fead4

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 302
    const v2, 0x7cb029d6

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x4d5bce51

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x233f2a31

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x6b5a39d0

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x66a235c0

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, -0x43b18bc9

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x357d035a

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x2f6f1f50

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x2758cceb

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 303
    const v2, -0x67fb0eb6

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2513be09

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x50cd7f0e

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x96ee8d1

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x29b28973

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x4f10bcb3

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0x4daacc54

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0x496e4df

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x4a2e611d

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 304
    const v2, -0x7795b3e5

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x1f2cc1b8

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x5165467f

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x15a162fc

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x358c015d

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, 0x7487fa73

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0x410bfb2e

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x1d67b35a

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x2d246dae

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 305
    const v2, 0x5610e933

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x47d66d13

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x61d79a8c

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0xca1377a

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x14f8598e

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x3c13eb89

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0x27a9ceee

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x369e48cb

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x1ae31e13

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 306
    const v2, -0x4eb885c4

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x202d63a7

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x73f2553f

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x31ebe787

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x37c773bf

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x3208ac16

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x5502a0a5

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x6f3ddf14

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, -0x24bb877a

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 307
    const v2, -0xc50357f

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x3b9746c2

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x3424382c

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x40a3c25f

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x3ce2e98e

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x25e2bc0c

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x493c288b

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x6af200bf

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x1a83971

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 308
    const v2, -0x4cf3f722

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x1b4b2764

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, -0x3ea99b70

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x7b34849f

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x49cd2a90

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x5c6c4874

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x57b8d042

    aput v2, v0, v1

    .line 280
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    .line 310
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0xbaeaf59

    aput v2, v0, v1

    const v1, 0x417e5365

    aput v1, v0, v4

    const v1, 0x171ac3a4

    aput v1, v0, v5

    const v1, 0x273a965e

    aput v1, v0, v6

    const v1, -0x54c43495

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, -0x62e00ebb

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 311
    const v2, -0x55354a8

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0x1cb46cfd

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x302055fa

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x76adf66d

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x33776e8a

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x2f5254c

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x1ab00329

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x2ac5d7cb

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x35268044

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 312
    const v2, 0x62b58fa3

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x4e21b6a6

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, -0x45da98e5

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, -0x15ba67f2

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, -0x1a21e40

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x2fc30275

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x4c8112f0

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x468da397

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, -0x2c943907

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 313
    const v2, -0x70fc18a1

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, -0x6dea6a64

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x6dbfeb7a

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x5295da59

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x412bd27d

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7458d321

    aput v2, v0, v1

    const v1, -0x1fb6d697

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, -0x3671bb38

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, -0x3d8a9577

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 314
    const v2, -0x710b8787

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x58996b3e

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, -0x46d8228f

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x1e4149b1

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0x770fe853

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x20c966ac

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, -0x31824bc6

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, -0x209ce7b6

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x1ae58231

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 315
    const v2, 0x51976033

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x5362457f

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x64b1e077

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x6bbb84ae

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x7e01e360

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x8f9942b

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x48705868

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x458f19fd

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x216b7894

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 316
    const v2, 0x7b52b7f8

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x73ab23d3

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x4b72e202

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x1fe3578f

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x55662aab

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x144df8d8

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, -0x4ad0fc3e

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x3a796585

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x37d3a508

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 317
    const v2, 0x2830f287

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, -0x40dc4d5b

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x302ba6a

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x16ed5c82

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x3075d4e4

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x79a792b4

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x7f3f0f2

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x694ea1e2

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, -0x259a320c

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 318
    const v2, 0x506d5be

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x34d11f62

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x593b7502

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x2e349d53

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0xc5d5fab

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, -0x75facd1f

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x95b8a15

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, -0x7cf4c614

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x6040aaef

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 319
    const v2, 0x715e069f

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x6ebd5110

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x213ef98a

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x2269c2fa

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x3eddae05

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, -0x19b2b943

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x5491b58d

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, -0x3b8efaa3

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x6046fd4

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 320
    const v2, 0x5060ff15

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, -0x67e6db05

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x42296817

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x4089cc43

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, -0x26988862

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x174f42be

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, -0x76f87775

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x19e7385b

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, -0x37862412

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 321
    const v2, 0x7ca1470a

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x427ce90f

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x7b0736e2

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, -0x7ff67c7a

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x2b3248ed

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x111eac70

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x5a6c4e72

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xefdfbff

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 322
    const v2, -0x7af0a9c8

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, -0x51c2e12b

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x2d362739

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xf0a64d9

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x5c6821a6

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x5b9bd154

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x36243a2e

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xa0cb167

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x57930fe7

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 323
    const v2, -0x114b2d6a

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x64e4616f

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x3f7fb03b

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x239e5de0

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x775a694b

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x121c161a

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x6c1df546

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x5f3f1ad6

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x223c43e0

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 324
    const v2, 0x1b121d17

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x90e0b0d

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0x740d5239

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, -0x49d24658

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x1e14c8a9

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, -0xea87ae7

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x75af4c07

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x66114423

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x7fa3fd60

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 325
    const v2, 0x1f79f26

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x725cbcf5

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x6644c53b

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, -0x4a4cb82

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x438b7629

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x23cbdcc6

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x12499704

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, -0x1b479c0f

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x31d7cadc

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 326
    const v2, 0x63421085

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, -0x68ecbfde

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x397bdfef

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x4a857d24

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x442d07c3

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x651eece

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x29c76da1

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, -0x61e2b4d1

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x4d230cd0

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 327
    const v2, -0x79f213ae

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x3e882f1d

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x4cd493ea

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x70a999b9

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x6bee05b8

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, -0x16b8dd9c

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x3573b74

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0xf5fe5c1

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x7d56d82c

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 328
    const v2, 0x3322ef90

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x4987c74e

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x38d9c1d1

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x3573015e

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x2b67c9f5

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0xa59307f

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0x7aa528de

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x4825d972

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x52c05b41

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 329
    const v2, 0x3a2ce49d

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x78500d92

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x5f6a9bcc

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x7e546246

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x72093ded

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x276f1748

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x392e5ef7

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x3c7d0a51

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x5d9fbe80

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 330
    const v2, -0x2f96836d

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, -0x2a9056d3

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0x25cfb312

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x5337c467

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x1810a77d

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x6317919d

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x3bdb7bbb

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x26cd0978

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x596ef418

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 331
    const v2, -0x6513fe49

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x4f83a89a

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x6a199a92

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x55811a

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x43def731

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x15efe6e8

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x18452665

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x6f4ace36

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x60152bf7

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 332
    const v2, -0x4fd62984

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, -0x5bce504e

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x3f2a3123

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x5a39cf6c

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, -0x5dca3f9a

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x4e7437bc

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x7d035936

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x6f1f4f30

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, -0x58ccea28

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 333
    const v2, 0x4f14a98

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x13be0826

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x3280f1b0

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x6ee8d00a

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x4d768dd6

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, -0x10bcb250

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x5533abb3

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x691b20fc

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x2e611c4b

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 334
    const v2, 0x6a4c1b88

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x2cc1b81f

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x65467f51

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0x5e9d04ea

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, -0x73fea2cb

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x78058c8c

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0xbfb2e41

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0x67b35a1d

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x246dad2e

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 335
    const v2, 0x10e93356

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x2992ecb9

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x2865739f

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, -0x5ec885f4

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x7a671ec

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x13eb893c

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x563111d9

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x61b735c9

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0x1ce1ede5

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 336
    const v2, 0x477a3cb1

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x2d63a621

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, -0xdaac08d

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x141879ce

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, -0x388c40c9

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, -0x8ac1533

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0x2a0a456

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x3ddf146f

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x447886db

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 337
    const v2, -0x50357e0d

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0x68b93ec4

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x24382c34

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x5c3da0c0

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x1d1672c3

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x1d43f3db

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x3c288b49

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0xdff4195

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x57c68eff

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 338
    const v2, 0xc08deb3

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x4b27631c

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x566490c1

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x34849e7c

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0x32d570b6

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x6c48745c

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x472fbda9

    aput v2, v0, v1

    .line 310
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    .line 340
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x5150a7f4

    aput v2, v0, v1

    const v1, 0x7e536541

    aput v1, v0, v4

    const v1, 0x1ac3a417

    aput v1, v0, v5

    const v1, 0x3a965e27

    aput v1, v0, v6

    const v1, 0x3bcb6bab

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0x1ff1459d

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 341
    const v2, -0x5354a706

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x4b9303e3

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x2055fa30

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, -0x5209928a

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, -0x776e8934

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, -0xadab3fe

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x4ffcd7e5

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, -0x3a2834d6

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x26804435

    aput v2, v0, v1

    const/16 v1, 0xf

    .line 342
    const v2, -0x4a705c9e

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, -0x21b6a54f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x25671bba

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x45980eea

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x5de1c0fe

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, -0x3cfd8ad1

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, -0x7eed0fb4

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, -0x725c68ba

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x6bc6f9d3

    aput v2, v0, v1

    const/16 v1, 0x18

    .line 343
    const v2, 0x3e75f8f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x15959c92

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, -0x40148593

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, -0x6a25a6ae

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, -0x2bd27c42

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x58d32174

    aput v2, v0, v1

    const v1, 0x492969e0

    aput v1, v0, v3

    const/16 v1, 0x1f

    const v2, -0x71bb3737

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x756a89c2

    aput v2, v0, v1

    const/16 v1, 0x21

    .line 344
    const v2, -0xb878672

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, -0x6694c1a8

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x27dd71b9

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, -0x4149b01f

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, -0xfe85278

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, -0x369953e0

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7db43ace

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x63184adf

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, -0x1a7dcee6

    aput v2, v0, v1

    const/16 v1, 0x2a

    .line 345
    const v2, -0x689fccaf

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x62457f53

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, -0x4e1f889c

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, -0x447b5195

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, -0x1e35f7f

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, -0x66bd4f8

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x70586848

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, -0x70e602bb

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, -0x6b789322

    aput v2, v0, v1

    const/16 v1, 0x33

    .line 346
    const v2, 0x52b7f87b

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, -0x54dc2c8d

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x72e2024b

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, -0x1ca870e1

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x662aab55

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, -0x4df8d715

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x2f03c2b5

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, -0x7965843b

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, -0x2c5af7c9

    aput v2, v0, v1

    const/16 v1, 0x3c

    .line 347
    const v2, 0x30f28728

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x23b2a5bf

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x2ba6a03

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, -0x12a37dea

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, -0x75d4e331

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, -0x586d4b87

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, -0xc0f0df9

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x4ea1e269

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x65cdf4da

    aput v2, v0, v1

    const/16 v1, 0x45

    .line 348
    const v2, 0x6d5be05

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, -0x2ee09dcc

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, -0x3b75015a

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x349d532e

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, -0x5d5faa0d

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x532e18a

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, -0x5b8a140a

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xb39ec83

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x40aaef60

    aput v2, v0, v1

    const/16 v1, 0x4e

    .line 349
    const v2, 0x5e069f71

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, -0x42aeef92

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x3ef98a21

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, -0x69c2f923

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, -0x2251fac2

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x4d46bde6

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, -0x6e4a72ac

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x71055dc4

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x46fd406

    aput v2, v0, v1

    const/16 v1, 0x57

    .line 350
    const v2, 0x60ff1550

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x1924fb98

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, -0x29681643

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, -0x7633bcc0

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x67779ed9

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, -0x4f42bd18

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x7888b89

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, -0x18c7a4e7

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0x79dbeec8

    aput v2, v0, v1

    const/16 v1, 0x60

    .line 351
    const v2, -0x5eb8f584

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x7ce90f42

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, -0x736e17c

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x9838680

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0x3248ed2b

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x1eac7011

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0x6c4e725a

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, -0x20400f2

    aput v2, v0, v1

    const/16 v1, 0x69

    .line 352
    const v2, 0xf563885

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x3d1ed5ae

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x3627392d

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xa64d90f

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x6821a65c

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x642eaba5

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0x243a2e36

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xcb1670a

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x6cf018a9

    aput v2, v0, v1

    const/16 v1, 0x72

    .line 353
    const v2, -0x4b2d6912

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x1b9e919b

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x7fb03a40

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0x61a220dc

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x5a694b77

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x1c161a12

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, -0x1df5456d

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x3f1ad560

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x3c43e022

    aput v2, v0, v1

    const/16 v1, 0x7b

    .line 354
    const v2, 0x121d171b

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xe0b0d09

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, -0xd523875

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x2db9a8b6

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x14c8a91e

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x578519f1

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, -0x50b3f88b

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, -0x11442267

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, -0x5c029f81

    aput v2, v0, v1

    const/16 v1, 0x84

    .line 355
    const v2, -0x860d9ff

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x5cbcf572

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0x44c53b66

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x5b347efb

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, -0x7489d6bd

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0x342339dd

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x49970313

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, -0x479c0e1c

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x283523cf

    aput v2, v0, v1

    const/16 v1, 0x8d

    .line 356
    const v2, 0x42108563

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x13402297

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x7bdfee3a

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x7a82dbb6

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x2d07c245

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x51eecd07

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, -0x38925ed7

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x1d4b2f9e

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, -0x230ccf4e

    aput v2, v0, v1

    const/16 v1, 0x96

    .line 357
    const v2, 0xdec5286

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x77d0e3c1

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x2b6c16b3

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, -0x56664690

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x11fa4894

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x472264e9

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, -0x573b7304

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x5fe5c010

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x56d82c7d

    aput v2, v0, v1

    const/16 v1, 0x9f

    .line 358
    const v2, 0x22ef9033

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, -0x7838b1b7

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, -0x263e2ec8

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, -0x73015d36

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, -0x67c9f42c

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x59307e0b

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, -0x5ad72186

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, -0x25d97149

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x3fa4bfad

    aput v2, v0, v1

    const/16 v1, 0xa8

    .line 359
    const v2, 0x2ce49d3a

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x500d9278

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x6a9bcc5f

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x5462467e

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x93dec73

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x6f174728

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x2e5ef739

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x7d0a503d

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, -0x60417fa3

    aput v2, v0, v1

    const/16 v1, 0xb1

    .line 360
    const v2, 0x697c93d0

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x6fa92dd5

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x304ceddb

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x37c46654

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x10a77d18

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x17919c64

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x248444c5

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x32f687da

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0x6ef41859

    aput v2, v0, v1

    const/16 v1, 0xba

    .line 361
    const v2, -0x13fe4866

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, -0x7c5765b1

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x199a916b

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x55811901

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0x2108cfbc

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, -0x101917eb

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x45266419

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x4ace366f

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, -0x152bf661

    aput v2, v0, v1

    const/16 v1, 0xc3

    .line 362
    const v2, 0x29d67cb0

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x31afb2a4

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x2a31233f

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x39cf6b5b

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x35c066a2

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x7437bc4e

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, -0x359357e

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x1f4f2f70

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x3315d8a7

    aput v2, v0, v1

    const/16 v1, 0xcc

    .line 363
    const v2, -0xeb567fc

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0x41f7daec

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, 0x7f0e50cd

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0x172ff691

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0x768dd64d

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x434db0ef

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x33abb256

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x1b20fb6a

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x611c4a2f

    aput v2, v0, v1

    const/16 v1, 0xd5

    .line 364
    const v2, 0x4c1b886a

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, -0x3e47e0d4

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x467f5165

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x62fb15a2

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x15d358c

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x58c8b79

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x4d1bef5

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x4ca5e299

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, -0x6dad2d25

    aput v2, v0, v1

    const/16 v1, 0xde

    .line 365
    const v2, -0x16cca9f0

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0x6d1347d6

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, -0x65739e29

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x377a0ca1

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0x598e14f8

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, -0x1476c3ed

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x3111d857

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, -0x48ca369f

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x1e121ae4

    aput v2, v0, v1

    const/16 v1, 0xe7

    .line 366
    const v2, 0x7a3cb147

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x63a6202e

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x553f73f2

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, 0x1879ce14

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x73bf37c7

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x53eacdf7

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, 0x5f5baafd

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, -0x20eb90c3

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x7886db44

    aput v2, v0, v1

    const/16 v1, 0xf0

    .line 367
    const v2, -0x357e0c51

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x46c13b98

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0x382c3424

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, -0x3da0bf5d

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0x1672c31d

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, -0x43f3da1e

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0x288b493c

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0xbe6af3

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0x397101a8

    aput v2, v0, v1

    const/16 v1, 0xf9

    .line 368
    const v2, 0x8deb30c

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, -0x27631b4c

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x6490c156

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0x7b6184cb

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x2a8f49ce

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0x48745c6c

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, -0x2fbda848

    aput v2, v0, v1

    .line 340
    sput-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    .line 61
    return-void

    .line 126
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x9at 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->WorkingKey:[[I

    .line 491
    return-void
.end method

.method private final FFmulX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 383
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private final decryptBlock([[I)V
    .locals 13
    .parameter "KW"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 651
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 652
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 653
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 654
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    aget-object v7, p1, v7

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 656
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    add-int/lit8 v0, v6, -0x1

    .local v0, r:I
    move v1, v0

    .end local v0           #r:I
    .local v1, r:I
    :goto_0
    if-gt v1, v10, :cond_0

    .line 676
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 677
    .local v2, r0:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 678
    .local v3, r1:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 679
    .local v4, r2:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v0, v1, -0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 684
    .local v5, r3:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 685
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    .line 684
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 686
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 687
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    .line 686
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 688
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 689
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    .line 688
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 690
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 691
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Si:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    .line 690
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 692
    return-void

    .line 658
    .end local v0           #r:I
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    .restart local v1       #r:I
    :cond_0
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 659
    aget-object v7, p1, v1

    aget v7, v7, v9

    .line 658
    xor-int v2, v6, v7

    .line 660
    .restart local v2       #r0:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 661
    aget-object v7, p1, v1

    aget v7, v7, v10

    .line 660
    xor-int v3, v6, v7

    .line 662
    .restart local v3       #r1:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 663
    aget-object v7, p1, v1

    aget v7, v7, v11

    .line 662
    xor-int v4, v6, v7

    .line 664
    .restart local v4       #r2:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 665
    add-int/lit8 v0, v1, -0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    .line 664
    xor-int v5, v6, v7

    .line 666
    .restart local v5       #r3:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 667
    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int/2addr v6, v7

    .line 666
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 668
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    and-int/lit16 v7, v3, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 669
    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int/2addr v6, v7

    .line 668
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 670
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    and-int/lit16 v7, v4, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 671
    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int/2addr v6, v7

    .line 670
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 672
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv0:[I

    and-int/lit16 v7, v5, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv1:[I

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv2:[I

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->Tinv3:[I

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    .line 673
    add-int/lit8 v1, v0, -0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int/2addr v6, v7

    .line 672
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    goto/16 :goto_0
.end method

.method private final encryptBlock([[I)V
    .locals 13
    .parameter "KW"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 611
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    aget-object v7, p1, v9

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 612
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    aget-object v7, p1, v9

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 613
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    aget-object v7, p1, v9

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 614
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    aget-object v7, p1, v9

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 616
    const/4 v0, 0x1

    .local v0, r:I
    :goto_0
    iget v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    add-int/lit8 v6, v6, -0x1

    if-lt v0, v6, :cond_0

    .line 628
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 629
    .local v2, r0:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 630
    .local v3, r1:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 631
    .local v4, r2:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .local v1, r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 636
    .local v5, r3:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    and-int/lit16 v7, v2, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 637
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    .line 636
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 638
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    and-int/lit16 v7, v3, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 639
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    .line 638
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 640
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    and-int/lit16 v7, v4, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 641
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    .line 640
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 642
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    and-int/lit16 v7, v5, 0xff

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    .line 643
    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x18

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    .line 642
    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 645
    return-void

    .line 618
    .end local v1           #r:I
    .end local v2           #r0:I
    .end local v3           #r1:I
    .end local v4           #r2:I
    .end local v5           #r3:I
    .restart local v0       #r:I
    :cond_0
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v9

    xor-int v2, v6, v7

    .line 619
    .restart local v2       #r0:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v10

    xor-int v3, v6, v7

    .line 620
    .restart local v3       #r1:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v0

    aget v7, v7, v11

    xor-int v4, v6, v7

    .line 621
    .restart local v4       #r2:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    iget v8, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #r:I
    .restart local v1       #r:I
    aget-object v7, p1, v0

    aget v7, v7, v12

    xor-int v5, v6, v7

    .line 622
    .restart local v5       #r3:I
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    and-int/lit16 v7, v2, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    shr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    shr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    shr-int/lit8 v8, v5, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v9

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 623
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    and-int/lit16 v7, v3, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    shr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    shr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v10

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 624
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    and-int/lit16 v7, v4, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    shr-int/lit8 v8, v2, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    shr-int/lit8 v8, v3, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aget-object v7, p1, v1

    aget v7, v7, v11

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 625
    sget-object v6, Lcom/trilead/ssh2/crypto/cipher/AES;->T0:[I

    and-int/lit16 v7, v5, 0xff

    aget v6, v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T1:[I

    shr-int/lit8 v8, v2, 0x8

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T2:[I

    shr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lcom/trilead/ssh2/crypto/cipher/AES;->T3:[I

    shr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #r:I
    .restart local v0       #r:I
    aget-object v7, p1, v1

    aget v7, v7, v12

    xor-int/2addr v6, v7

    iput v6, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    goto/16 :goto_0
.end method

.method private final generateWorkingKey([BZ)[[I
    .locals 11
    .parameter "key"
    .parameter "forEncryption"

    .prologue
    .line 421
    array-length v7, p1

    div-int/lit8 v0, v7, 0x4

    .line 424
    .local v0, KC:I
    const/4 v7, 0x4

    if-eq v0, v7, :cond_0

    const/4 v7, 0x6

    if-eq v0, v7, :cond_0

    const/16 v7, 0x8

    if-ne v0, v7, :cond_1

    :cond_0
    mul-int/lit8 v7, v0, 0x4

    array-length v8, p1

    if-eq v7, v8, :cond_2

    .line 426
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Key length not 128/192/256 bits."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 429
    :cond_2
    add-int/lit8 v7, v0, 0x6

    iput v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    .line 431
    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 437
    .local v1, W:[[I
    const/4 v5, 0x0

    .line 438
    .local v5, t:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, p1

    if-lt v2, v7, :cond_4

    .line 449
    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v4, v7, 0x2

    .line 450
    .local v4, k:I
    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_5

    .line 465
    if-nez p2, :cond_3

    .line 467
    const/4 v3, 0x1

    .local v3, j:I
    :goto_2
    iget v7, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->ROUNDS:I

    if-lt v3, v7, :cond_8

    .line 476
    .end local v3           #j:I
    :cond_3
    return-object v1

    .line 440
    .end local v4           #k:I
    :cond_4
    shr-int/lit8 v7, v5, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v5, 0x3

    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    .line 441
    add-int/lit8 v10, v2, 0x3

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    .line 440
    aput v9, v7, v8

    .line 442
    add-int/lit8 v2, v2, 0x4

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 452
    .restart local v4       #k:I
    :cond_5
    add-int/lit8 v7, v2, -0x1

    shr-int/lit8 v7, v7, 0x2

    aget-object v7, v1, v7

    add-int/lit8 v8, v2, -0x1

    and-int/lit8 v8, v8, 0x3

    aget v6, v7, v8

    .line 453
    .local v6, temp:I
    rem-int v7, v2, v0

    if-nez v7, :cond_7

    .line 455
    const/16 v7, 0x8

    invoke-direct {p0, v6, v7}, Lcom/trilead/ssh2/crypto/cipher/AES;->shift(II)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/trilead/ssh2/crypto/cipher/AES;->subWord(I)I

    move-result v7

    sget-object v8, Lcom/trilead/ssh2/crypto/cipher/AES;->rcon:[I

    div-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    xor-int v6, v7, v8

    .line 462
    :cond_6
    :goto_3
    shr-int/lit8 v7, v2, 0x2

    aget-object v7, v1, v7

    and-int/lit8 v8, v2, 0x3

    sub-int v9, v2, v0

    shr-int/lit8 v9, v9, 0x2

    aget-object v9, v1, v9

    sub-int v10, v2, v0

    and-int/lit8 v10, v10, 0x3

    aget v9, v9, v10

    xor-int/2addr v9, v6

    aput v9, v7, v8

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 457
    :cond_7
    const/4 v7, 0x6

    if-le v0, v7, :cond_6

    rem-int v7, v2, v0

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 459
    invoke-direct {p0, v6}, Lcom/trilead/ssh2/crypto/cipher/AES;->subWord(I)I

    move-result v6

    goto :goto_3

    .line 469
    .end local v6           #temp:I
    .restart local v3       #j:I
    :cond_8
    const/4 v2, 0x0

    :goto_4
    const/4 v7, 0x4

    if-lt v2, v7, :cond_9

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 471
    :cond_9
    aget-object v7, v1, v3

    aget-object v8, v1, v3

    aget v8, v8, v2

    invoke-direct {p0, v8}, Lcom/trilead/ssh2/crypto/cipher/AES;->inv_mcol(I)I

    move-result v8

    aput v8, v7, v2

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private final inv_mcol(I)I
    .locals 7
    .parameter "x"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->FFmulX(I)I

    move-result v0

    .line 401
    .local v0, f2:I
    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/cipher/AES;->FFmulX(I)I

    move-result v1

    .line 402
    .local v1, f4:I
    invoke-direct {p0, v1}, Lcom/trilead/ssh2/crypto/cipher/AES;->FFmulX(I)I

    move-result v2

    .line 403
    .local v2, f8:I
    xor-int v3, p1, v2

    .line 405
    .local v3, f9:I
    xor-int v4, v0, v1

    xor-int/2addr v4, v2

    xor-int v5, v0, v3

    const/16 v6, 0x8

    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/crypto/cipher/AES;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    xor-int v5, v1, v3

    const/16 v6, 0x10

    invoke-direct {p0, v5, v6}, Lcom/trilead/ssh2/crypto/cipher/AES;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    const/16 v5, 0x18

    invoke-direct {p0, v3, v5}, Lcom/trilead/ssh2/crypto/cipher/AES;->shift(II)I

    move-result v5

    xor-int/2addr v4, v5

    return v4
.end method

.method private final packBlock([BI)V
    .locals 3
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 584
    move v0, p2

    .line 586
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 587
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 588
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 589
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 591
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 592
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 593
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 594
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 596
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 597
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 598
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 599
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 601
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 602
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 603
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 604
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 605
    return-void
.end method

.method private final shift(II)I
    .locals 2
    .parameter "r"
    .parameter "shift"

    .prologue
    .line 372
    ushr-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private final subWord(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 410
    sget-object v0, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/trilead/ssh2/crypto/cipher/AES;->S:[B

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private final unpackBlock([BI)V
    .locals 4
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 559
    move v0, p2

    .line 561
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 562
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 563
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 564
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C0:I

    .line 566
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 567
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 568
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 569
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C1:I

    .line 571
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 572
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 573
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 574
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C2:I

    .line 576
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 577
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 578
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 579
    iget v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->C3:I

    .line 580
    return-void
.end method


# virtual methods
.method public final getBlockSize()I
    .locals 1

    .prologue
    .line 517
    const/16 v0, 0x10

    return v0
.end method

.method public final init(Z[B)V
    .locals 1
    .parameter "forEncryption"
    .parameter "key"

    .prologue
    .line 506
    invoke-direct {p0, p2, p1}, Lcom/trilead/ssh2/crypto/cipher/AES;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->WorkingKey:[[I

    .line 507
    iput-boolean p1, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->doEncrypt:Z

    .line 508
    return-void
.end method

.method public final processBlock([BI[BI)I
    .locals 2
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->WorkingKey:[[I

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_2
    iget-boolean v0, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->doEncrypt:Z

    if-eqz v0, :cond_3

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/crypto/cipher/AES;->unpackBlock([BI)V

    .line 540
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/cipher/AES;->encryptBlock([[I)V

    .line 541
    invoke-direct {p0, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/AES;->packBlock([BI)V

    .line 550
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 545
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/trilead/ssh2/crypto/cipher/AES;->unpackBlock([BI)V

    .line 546
    iget-object v0, p0, Lcom/trilead/ssh2/crypto/cipher/AES;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lcom/trilead/ssh2/crypto/cipher/AES;->decryptBlock([[I)V

    .line 547
    invoke-direct {p0, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/AES;->packBlock([BI)V

    goto :goto_0
.end method

.method public transformBlock([BI[BI)V
    .locals 0
    .parameter "src"
    .parameter "srcoff"
    .parameter "dst"
    .parameter "dstoff"

    .prologue
    .line 696
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/trilead/ssh2/crypto/cipher/AES;->processBlock([BI[BI)I

    .line 697
    return-void
.end method
