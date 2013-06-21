.class public Lcom/scoreloop/client/android/core/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/16 v5, 0x2d

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 151
    const-class v0, Lcom/scoreloop/client/android/core/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/scoreloop/client/android/core/util/Base64;->c:Z

    .line 602
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v5, v0, v1

    const/4 v1, 0x1

    aput-byte v6, v0, v1

    const/4 v1, 0x2

    aput-byte v7, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v1, v0, v5

    const/16 v1, 0x2e

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    aput-byte v1, v0, v6

    const/16 v1, 0x6c

    aput-byte v1, v0, v7

    const/16 v1, 0x32

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    .line 613
    const/16 v0, 0x101

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v6

    const/4 v1, 0x2

    aput-byte v1, v0, v7

    const/16 v1, 0x32

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    aput-byte v5, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    aput-byte v6, v0, v1

    const/16 v1, 0x6c

    aput-byte v7, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

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

    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    const/16 v1, 0x100

    aput-byte v3, v0, v1

    .line 652
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/scoreloop/client/android/core/util/Base64;->a:[B

    .line 663
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/scoreloop/client/android/core/util/Base64;->b:[B

    .line 703
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v1, v0, v5

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v6

    const/16 v1, 0x78

    aput-byte v1, v0, v7

    const/16 v1, 0x32

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    aput-byte v6, v0, v1

    const/16 v1, 0x35

    aput-byte v7, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v5, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    .line 714
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v4, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x3e

    aput-byte v1, v0, v5

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v3, v0, v1

    const/16 v1, 0x34

    aput-byte v1, v0, v6

    const/16 v1, 0x35

    aput-byte v1, v0, v7

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v5, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v6, v0, v1

    const/16 v1, 0x78

    aput-byte v7, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

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

    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 652
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 663
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1960
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1235
    const/4 v0, 0x0

    .line 1237
    :try_start_0
    array-length v1, p0

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/core/util/Base64;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1241
    :cond_0
    sget-boolean v1, Lcom/scoreloop/client/android/core/util/Base64;->c:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1238
    :catch_0
    move-exception v1

    .line 1239
    sget-boolean v2, Lcom/scoreloop/client/android/core/util/Base64;->c:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1242
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {p0}, Lcom/scoreloop/client/android/core/util/Base64;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static a([BI)[B
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x3d

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 818
    if-nez p0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot decode null source array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    array-length v0, p0

    if-le p1, v0, :cond_1

    .line 822
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Source array with length %d cannot have offset of %d and process %d bytes."

    new-array v3, v3, [Ljava/lang/Object;

    array-length v6, p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_1
    if-nez p1, :cond_2

    .line 827
    new-array v0, v4, [B

    .line 873
    :goto_0
    return-object v0

    .line 828
    :cond_2
    const/4 v0, 0x4

    if-ge p1, v0, :cond_3

    .line 829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_3
    sget-object v8, Lcom/scoreloop/client/android/core/util/Base64;->b:[B

    .line 834
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 835
    new-array v9, v0, [B

    .line 838
    const/4 v0, 0x4

    new-array v10, v0, [B

    move v7, v4

    move v5, v4

    move v6, v4

    .line 843
    :goto_1
    if-ge v7, p1, :cond_d

    .line 845
    aget-byte v0, p0, v7

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v8, v0

    .line 850
    const/4 v11, -0x5

    if-lt v0, v11, :cond_9

    .line 851
    const/4 v11, -0x1

    if-lt v0, v11, :cond_c

    .line 852
    add-int/lit8 v0, v5, 0x1

    aget-byte v11, p0, v7

    aput-byte v11, v10, v5

    .line 853
    if-le v0, v3, :cond_b

    .line 854
    array-length v0, v10

    if-lt v3, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v2, v2, [Ljava/lang/Object;

    array-length v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ltz v6, :cond_5

    add-int/lit8 v0, v6, 0x2

    array-length v5, v9

    if-lt v0, v5, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v2, v2, [Ljava/lang/Object;

    array-length v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v0, Lcom/scoreloop/client/android/core/util/Base64;->b:[B

    aget-byte v5, v10, v2

    if-ne v5, v12, :cond_7

    aget-byte v5, v10, v4

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x12

    aget-byte v11, v10, v1

    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v5

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v9, v6

    move v0, v1

    :goto_2
    add-int/2addr v0, v6

    .line 858
    aget-byte v5, p0, v7

    if-ne v5, v12, :cond_a

    .line 871
    :goto_3
    new-array v1, v0, [B

    .line 872
    invoke-static {v9, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 873
    goto/16 :goto_0

    .line 854
    :cond_7
    aget-byte v5, v10, v3

    if-ne v5, v12, :cond_8

    aget-byte v5, v10, v4

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x12

    aget-byte v11, v10, v1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v5, v11

    aget-byte v11, v10, v2

    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v5

    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, v9, v6

    add-int/lit8 v5, v6, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v9, v5

    move v0, v2

    goto :goto_2

    :cond_8
    aget-byte v5, v10, v4

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x12

    aget-byte v11, v10, v1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0xc

    or-int/2addr v5, v11

    aget-byte v11, v10, v2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v5, v11

    aget-byte v11, v10, v3

    aget-byte v0, v0, v11

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v5

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, v9, v6

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v11, v0, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v5

    add-int/lit8 v5, v6, 0x2

    int-to-byte v0, v0

    aput-byte v0, v9, v5

    move v0, v3

    goto :goto_2

    .line 866
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Bad Base64 input character decimal %d in array position %d"

    new-array v2, v2, [Ljava/lang/Object;

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v5, v0

    move v0, v4

    .line 843
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v0

    goto/16 :goto_1

    :cond_b
    move v5, v6

    goto :goto_4

    :cond_c
    move v0, v5

    move v5, v6

    goto :goto_4

    :cond_d
    move v0, v6

    goto/16 :goto_3
.end method

.method private static a([BII[BI)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x3d

    const/4 v0, 0x0

    .line 1876
    sget-object v3, Lcom/scoreloop/client/android/core/util/Base64;->a:[B

    .line 1889
    if-lez p2, :cond_1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_0
    or-int/2addr v0, v1

    .line 1893
    packed-switch p2, :pswitch_data_0

    .line 1916
    :goto_2
    return-object p3

    :cond_1
    move v2, v0

    .line 1889
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    .line 1895
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 1896
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 1897
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 1898
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    goto :goto_2

    .line 1902
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 1903
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 1904
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 1905
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 1909
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 1910
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 1911
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 1912
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2

    .line 1893
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b([BI)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 1345
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have length offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p0

    if-le p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot have offset of %d and length of %d with array of length %d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    div-int/lit8 v0, p1, 0x3

    shl-int/lit8 v2, v0, 0x2

    rem-int/lit8 v0, p1, 0x3

    if-lez v0, :cond_3

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v2

    new-array v3, v0, [B

    add-int/lit8 v4, p1, -0x2

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-static {p0, v2, v5, v3, v0}, Lcom/scoreloop/client/android/core/util/Base64;->a([BII[BI)[B

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-ge v2, p1, :cond_5

    sub-int v4, p1, v2

    invoke-static {p0, v2, v4, v3, v0}, Lcom/scoreloop/client/android/core/util/Base64;->a([BII[BI)[B

    add-int/lit8 v0, v0, 0x4

    :cond_5
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_6

    new-array v2, v0, [B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 1349
    :goto_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1352
    :goto_3
    return-object v0

    :cond_6
    move-object v0, v3

    .line 1345
    goto :goto_2

    .line 1352
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_3
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 902
    if-nez p0, :cond_0

    .line 903
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Input string was null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_0
    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 916
    :goto_0
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/util/Base64;->a([BI)[B

    move-result-object v0

    .line 920
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 923
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 924
    const v3, 0x8b1f

    if-ne v3, v1, :cond_1

    .line 928
    const/16 v1, 0x800

    new-array v5, v1, [B

    .line 932
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 933
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 934
    :try_start_3
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 936
    :goto_1
    :try_start_4
    invoke-virtual {v3, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    .line 937
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    .line 945
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 954
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 958
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 966
    :cond_1
    :goto_5
    return-object v0

    .line 911
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 950
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 954
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 958
    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    .line 961
    :catch_2
    move-exception v1

    goto :goto_5

    .line 949
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    .line 950
    :goto_8
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 954
    :goto_9
    :try_start_d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 958
    :goto_a
    :try_start_e
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 960
    :goto_b
    throw v0

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_4

    .line 961
    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_b

    .line 949
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_8

    :catch_b
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :catch_c
    move-exception v3

    move-object v3, v2

    goto :goto_2

    :catch_d
    move-exception v3

    move-object v3, v4

    goto :goto_2
.end method
