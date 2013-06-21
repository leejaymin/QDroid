.class public Lexam/AndroidExam/AndroidExam;
.super Landroid/app/Activity;
.source "AndroidExam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/AndroidExam/AndroidExam$Example;
    }
.end annotation


# instance fields
.field arExample:[[Lexam/AndroidExam/AndroidExam$Example;

.field arPackage:[Ljava/lang/String;

.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mInitSelection:Z

.field mListActivity:Landroid/widget/ListView;

.field mPackage:I

.field mSpin:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/16 v0, 0xc

    new-array v0, v0, [[Lexam/AndroidExam/AndroidExam$Example;

    .line 37
    const/16 v1, 0x27

    new-array v1, v1, [Lexam/AndroidExam/AndroidExam$Example;

    .line 38
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Layout/TextViewTest;

    const-string v4, "\ud14d\uc2a4\ud2b8 \ubdf0"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 39
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Layout/ImageViewTest;

    const-string v4, "\uc774\ubbf8\uc9c0 \ubdf0"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 40
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Layout/ButtonEdit;

    const-string v4, "\ubc84\ud2bc\uacfc \uc5d0\ub514\ud2b8"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v9

    .line 41
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Layout/Horizontal;

    const-string v4, "\ubc84\ud2bc \uc5d0\ub514\ud2b8 \uc218\ud3c9 \ubc30\uce58"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v10

    .line 42
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Layout/Horizontal2;

    const-string v4, "\ud14d\uc2a4\ud2b8 \uc218\ud3c9 \ubc30\uce58"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v11

    const/4 v2, 0x5

    .line 43
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Horizontal3;

    const-string v5, "\ud14d\uc2a4\ud2b8 \uc218\ud3c9 \ubc30\uce582"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 44
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Gravity1;

    const-string v5, "\ub514\ud3f4\ud2b8 \uc88c\uc0c1\ub2e8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 45
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Gravity2;

    const-string v5, "\ud654\uba74 \uc911\uc559"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 46
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Gravity3;

    const-string v5, "\uc218\uc9c1\ub9cc \uc911\uc559"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 47
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Gravity4;

    const-string v5, "\uc218\uc9c1 \uc911\uc559,\uc218\ud3c9 \uc624\ub978\ucabd"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 48
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/lGravity1;

    const-string v5, "\uc218\ud3c9\uc911\uc559"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 49
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/lGravity2;

    const-string v5, "\ud654\uba74\uc911\uc559"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 50
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/lGravity3;

    const-string v5, "\ub450 \ucee8\ud2b8\ub864 \ud654\uba74\uc911\uc559"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 51
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/lGravity4;

    const-string v5, "\ub450 \uc18d\uc131 \ucc28\uc774 \uc5f0\uad6c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 52
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Base1;

    const-string v5, "\ubca0\uc774\uc2a4 \uc815\ub82c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 53
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Base2;

    const-string v5, "\ubca0\uc774\uc2a4 \uc548\uc815\ub82c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 54
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Weight1;

    const-string v5, "1:3:1"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 55
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Weight2;

    const-string v5, "1:2:3"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 56
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Weight3;

    const-string v5, "\uc0bc\ub2e8 \ubd84\ud560"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 57
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Padding1;

    const-string v5, "\ub514\ud3f4\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 58
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Padding2;

    const-string v5, "\ub9c8\uc9c4 10"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 59
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Padding3;

    const-string v5, "\ub9c8\uc9c4 10, \ud328\ub529 10"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 60
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Relative1;

    const-string v5, "\uc0c1\ub300\uc801 \ubc30\uce58"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 61
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/NameCard;

    const-string v5, "\uba85\ud568\ucca0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 62
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Absolute;

    const-string v5, "\uc808\ub300 \ubc30\uce58"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 63
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Frame;

    const-string v5, "\uacb9\uccd0\uc11c \ubc30\uce58"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    .line 64
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Table;

    const-string v5, "\ud14c\uc774\ube14 \ubc30\uce58"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    .line 65
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/NestLayout;

    const-string v5, "\ub808\uc774\uc544\uc6c3 \uc911\ucca9"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    .line 66
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/MultiPage;

    const-string v5, "\uc5ec\ub7ec \ud398\uc774\uc9c0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 67
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/CodeLayout;

    const-string v5, "\ucf54\ub4dc \uc5c6\uc74c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 68
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/CodeLayout2;

    const-string v5, "\ucf54\ub4dc \uc791\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    .line 69
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Inflation;

    const-string v5, "\ub808\uc774\uc544\uc6c3 \uc804\uac1c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    .line 70
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Inflation2;

    const-string v5, "\ucf54\ub4dc\ub85c \uc0dd\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 71
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Inflation3;

    const-string v5, "\uc9c1\uc811 \uc804\uac1c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    .line 72
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/Inflation4;

    const-string v5, "\ud14d\uc2a4\ud2b8\ub9cc \uc804\uac1c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    .line 73
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/LayoutParameter;

    const-string v5, "\ub808\uc774\uc544\uc6c3 \uc804\uac1c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    .line 74
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/LayoutParameter2;

    const-string v5, "\ucf54\ub4dc\ub85c \uc0dd\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 75
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/MarginParameter;

    const-string v5, "\ub9c8\uc9c4 \uc8fc\uae30"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    .line 76
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Layout/MarginParameter2;

    const-string v5, "\ucf54\ub4dc\ub85c \uc0dd\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    .line 78
    const/16 v1, 0xd

    new-array v1, v1, [Lexam/AndroidExam/AndroidExam$Example;

    .line 79
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Output/CustomView;

    const-string v4, "\ucee4\uc2a4\ud140 \ubdf0"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 80
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Output/Primitive1;

    const-string v4, "\uae30\ubcf8 \ub3c4\ud615"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 81
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Output/Primitive2;

    const-string v4, "\uae30\ubcf8 \ub3c4\ud6152"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v9

    .line 82
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Output/AntiAlias;

    const-string v4, "\uc548\ud2f0 \uc54c\ub9ac\uc544\uc2f1"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v10

    .line 83
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Output/PaintTest;

    const-string v4, "Paint \uac1d\uccb4"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v11

    const/4 v2, 0x5

    .line 84
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/DrawBitmap;

    const-string v5, "\ube44\ud2b8\ub9f5 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 85
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/DrawText;

    const-string v5, "\ud14d\uc2a4\ud2b8 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 86
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/TypeFace;

    const-string v5, "\ud0c0\uc785 \ud398\uc774\uc2a4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 87
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/CustomFont;

    const-string v5, "\ucee4\uc2a4\ud140 \ud3f0\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 88
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/DrawPath;

    const-string v5, "\ud328\uc2a4 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 89
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/ToastTest;

    const-string v5, "\ud1a0\uc2a4\ud2b8 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 90
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/MessageBeep;

    const-string v5, "\ube44\ud504\uc74c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 91
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Output/SoundPoolTest;

    const-string v5, "\uc0ac\uc6b4\ub4dc \ud480"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    .line 93
    const/16 v1, 0x10

    new-array v1, v1, [Lexam/AndroidExam/AndroidExam$Example;

    .line 94
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Input/HandleEvent;

    const-string v4, "\uc5ec\ub7ec \uac00\uc9c0 \uc774\ubca4\ud2b8 \ucc98\ub9ac \ubc29\uc2dd"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 95
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Input/HandlerOrder;

    const-string v4, "\ud578\ub4e4\ub7ec\uc758 \uc6b0\uc120 \uc21c\uc704"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 96
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Input/HandlerAccess;

    const-string v4, "\uc678\ubd80 \ubcc0\uc218 \uc561\uc138\uc2a4"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v9

    .line 97
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Input/FreeLine;

    const-string v4, "\uc790\uc720 \uace1\uc120"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v10

    .line 98
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Input/MoveCircle;

    const-string v4, "\ud0a4\ubcf4\ub4dc\ub85c \uc6d0 \uc6c0\uc9c1\uc774\uae30"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v11

    const/4 v2, 0x5

    .line 99
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/Fruit;

    const-string v5, "\uc704\uc82f\uc758 \uc774\ubca4\ud2b8 \ucc98\ub9ac"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 100
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/FocusTest;

    const-string v5, "\ud3ec\ucee4\uc2a4 \uc774\ub3d9(\ub514\ud3f4\ud2b8)"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 101
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/FocusTest2;

    const-string v5, "\ud3ec\ucee4\uc2a4 \uc774\ub3d9(\uc21c\ud658)"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 102
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/Timer;

    const-string v5, "\ud0c0\uc774\uba38"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 103
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/OptionMenu;

    const-string v5, "\uc635\uc158 \uba54\ub274"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 104
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/OptionMenu2;

    const-string v5, "XML\ub85c \uba54\ub274 \uc804\uac1c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 105
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/MenuCheck;

    const-string v5, "\uba54\ub274 \ud56d\ubaa9 \uad00\ub9ac"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 106
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/ContextMenuTest;

    const-string v5, "\ucee8\ud14d\uc2a4\ud2b8 \uba54\ub274"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 107
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/MemoryPower;

    const-string v5, "\uae30\uc5b5\ub825 \uac8c\uc784"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 108
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/LogTest;

    const-string v5, "Log \ub0a8\uae30\uae30"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 109
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Input/MemoryPower2;

    const-string v5, "\ub514\ubc84\uae45 \uc2e4\uc2b5"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    .line 111
    const/16 v1, 0x2d

    new-array v1, v1, [Lexam/AndroidExam/AndroidExam$Example;

    .line 112
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Widget/ReadResource;

    const-string v4, "\ub9ac\uc18c\uc2a4 \uc77d\uae30"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 113
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Widget/ReadResource2;

    const-string v4, "\ub9ac\uc18c\uc2a4 \uc77d\uae302"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 114
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Widget/StyleTest;

    const-string v4, "\uc2a4\ud0c0\uc77c"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v9

    .line 115
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Widget/ThemeTest;

    const-string v4, "\ud14c\ub9c8"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v10

    .line 116
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Widget/SystemTheme;

    const-string v4, "\uc2dc\uc2a4\ud15c \ud14c\ub9c8"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v11

    const/4 v2, 0x5

    .line 117
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/LandPort;

    const-string v5, "\ub300\uccb4 \ub9ac\uc18c\uc2a4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 118
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/TextViewAttr;

    const-string v5, "\ud14d\uc2a4\ud2b8 \ubdf0\uc758 \uc18d\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 119
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/SpannableTest;

    const-string v5, "Spannable"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 120
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/EditableTest;

    const-string v5, "Editable"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 121
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/TextChange;

    const-string v5, "\ud14d\uc2a4\ud2b8 \ubcc0\uacbd \uc774\ubca4\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 122
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/EditLimit;

    const-string v5, "\uc785\ub825 \uae38\uc774 \uc81c\ud55c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 123
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/EditSelect;

    const-string v5, "\uc120\ud0dd \uc601\uc5ed \uad00\ub9ac"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 124
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/InputType;

    const-string v5, "\ud0a4\ubcf4\ub4dc\uc758 \uc885\ub958"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 125
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ShowHideKey;

    const-string v5, "\ud0a4\ubcf4\ub4dc \ubcf4\uc774\uae30/\uc228\uae30\uae30"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 126
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/AdjustKey1;

    const-string v5, "\ud0a4\ubcf4\ub4dc Panning"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 127
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/AdjustKey2;

    const-string v5, "\ud0a4\ubcf4\ub4dc Resize"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 128
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/NoNinePatch;

    const-string v5, "\ubcf4\ud1b5 \uc774\ubbf8\uc9c0 \ubc30\uacbd \uc0ac\uc6a9"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 129
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/NinePatch;

    const-string v5, "\ub098\uc778\ud328\uce58 \uc774\ubbf8\uc9c0 \ubc30\uacbd \uc0ac\uc6a9"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 130
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ArrowButton;

    const-string v5, "\ud654\uc0b4\ud45c \ubc84\ud2bc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 131
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/RadioTest;

    const-string v5, "\ub77c\ub514\uc624 \ubc84\ud2bc, \uccb4\ud06c \ubc15\uc2a4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 132
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ImageButtonTest;

    const-string v5, "\uc774\ubbf8\uc9c0 \ubc84\ud2bc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 133
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListTest;

    const-string v5, "\ub9ac\uc2a4\ud2b8 \ubdf0\uc5d0 \ubb38\uc790\uc5f4 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 134
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListFromArray;

    const-string v5, "\ub9ac\uc2a4\ud2b8 \ubdf0\uc5d0 XML \ubc30\uc5f4 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 135
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListAttr;

    const-string v5, "\ub9ac\uc2a4\ud2b8 \ubdf0\uc758 \uc18d\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 136
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListAddDel;

    const-string v5, "\ub9ac\uc2a4\ud2b8\uc758 \ud56d\ubaa9 \ud3b8\uc9d1"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 137
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListIconText;

    const-string v5, "\uc544\uc774\ucf58\uacfc \ud14d\uc2a4\ud2b8 \uac19\uc774 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    .line 138
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListOfViews;

    const-string v5, "\uc5ec\ub7ec \uc885\ub958\uc758 \ubdf0 \ucd9c\ub825"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    .line 139
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ListOnly;

    const-string v5, "ListActivity \uc0ac\uc6a9"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    .line 140
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/SpinnerTest;

    const-string v5, "\uc2a4\ud53c\ub108"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 141
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/GridTest;

    const-string v5, "\uadf8\ub9ac\ub4dc \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 142
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/GalleryTest;

    const-string v5, "\uac24\ub7ec\ub9ac \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    .line 143
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ProgressBarTest;

    const-string v5, "\ud504\ub85c\uadf8\ub798\uc2a4 \ubc14"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    .line 144
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ProgressTitle;

    const-string v5, "\ud0c0\uc774\ud2c0 \ud504\ub85c\uadf8\ub798\uc2a4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 145
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ProgressTitle2;

    const-string v5, "\ud0c0\uc774\ud2c0 \ud504\ub85c\uadf8\ub798\uc2a4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    .line 146
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/SeekBarTest;

    const-string v5, "\uc2dc\ud06c \ubc14"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    .line 147
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/Rating;

    const-string v5, "\ub798\uc774\ud305 \ubc14"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    .line 148
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/SoundEdit;

    const-string v5, "\uc18c\ub9ac\ub098\ub294 \uc5d0\ub514\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 149
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/NumEdit;

    const-string v5, "\uc785\ub825\ubb38\uc790\uc218\ub97c \ud45c\uc2dc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    .line 150
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/Attribute;

    const-string v5, "\uc18d\uc131 \uc5f0\uad6c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    .line 151
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/SoundEdit2;

    const-string v5, "\uc18c\ub9ac\ub098\ub294 \uc5d0\ub514\ud2b82"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x28

    .line 152
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/Measuring;

    const-string v5, "onMeasure \ud14c\uc2a4\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x29

    .line 153
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/RainbowTest;

    const-string v5, "\ubb34\uc9c0\uac1c \ud504\ub85c\uadf8\ub798\uc2a4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    .line 154
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/ScrollViewTest;

    const-string v5, "\uc2a4\ud06c\ub864 \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    .line 155
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/HScrollViewTest;

    const-string v5, "\uc218\ud3c9 \uc2a4\ud06c\ub864 \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    .line 156
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Widget/WebViewTest;

    const-string v5, "\uc6f9 \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    aput-object v1, v0, v10

    .line 158
    const/16 v1, 0x9

    new-array v1, v1, [Lexam/AndroidExam/AndroidExam$Example;

    .line 159
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Data/FileIO;

    const-string v4, "\ud30c\uc77c \uc785\ucd9c\ub825"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v8

    .line 160
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Data/ShareFile;

    const-string v4, "\ud30c\uc77c \uacf5\uc720"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v7

    .line 161
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Data/SDCard;

    const-string v4, "SD Card \uc785\ucd9c\ub825"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v9

    .line 162
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Data/TextLogTest;

    const-string v4, "\ud14d\uc2a4\ud2b8 \ub85c\uadf8"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v10

    .line 163
    new-instance v2, Lexam/AndroidExam/AndroidExam$Example;

    const-class v3, Lexam/Data/PrefTest;

    const-string v4, "\ud504\ub808\ud504\ub7f0\uc2a4"

    invoke-direct {v2, p0, v3, v4}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v2, v1, v11

    const/4 v2, 0x5

    .line 164
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Data/PrefActivity;

    const-string v5, "\ud504\ub808\ud504\ub7f0\uc2a4 \uc561\ud2f0\ube44\ud2f0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 165
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Data/EnglishWord;

    const-string v5, "DB \uc608\uc81c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 166
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Data/ProductList;

    const-string v5, "\ucee4\uc11c\uc640 \uc5f0\uacb0\ub41c \ub9ac\uc2a4\ud2b8 \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 167
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Data/CallWordCP;

    const-string v5, "CP \ud638\ucd9c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v1, v2

    aput-object v1, v0, v11

    const/4 v1, 0x5

    .line 169
    const/16 v2, 0xd

    new-array v2, v2, [Lexam/AndroidExam/AndroidExam$Example;

    .line 170
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/activity/CallActivity;

    const-string v5, "\ub0b4\ubd80 \uc561\ud2f0\ube44\ud2f0 \ud638\ucd9c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 171
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/activity/CallOther;

    const-string v5, "\uc678\ubd80 \uc561\ud2f0\ube44\ud2f0 \ud638\ucd9c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 172
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/activity/CommActivity;

    const-string v5, "\uc561\ud2f0\ube44\ud2f0\uac04\uc758 \ud1b5\uc2e0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 173
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/activity/SaveState;

    const-string v5, "\uc0c1\ud0dc \uc800\uc7a5-\uc800\uc7a5\uc548\ud568"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 174
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/activity/SaveState2;

    const-string v5, "\uc0c1\ud0dc \uc800\uc7a5-x\ub9cc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v11

    const/4 v3, 0x5

    .line 175
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/SaveState3;

    const-string v6, "\uc0c1\ud0dc \uc800\uc7a5-x,y \ubaa8\ub450"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 176
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/SaveCurve;

    const-string v6, "\uace1\uc120 \uac1d\uccb4 \uc800\uc7a5"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 177
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/SaveCurve2;

    const-string v6, "Parcel \uc800\uc7a5"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 178
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/SaveCurve3;

    const-string v6, "\uc561\ud2f0\ube44\ud2f0 \ud30c\uad34 \uae08\uc9c0"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 179
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/TabTest;

    const-string v6, "\ud0ed-\ubdf0\uc758 id \uc9c0\uc815"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 180
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/TabTest2;

    const-string v6, "\ud0ed-\ud329\ud1a0\ub9ac"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 181
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/TabTest3;

    const-string v6, "\ud0ed-\uc561\ud2f0\ube44\ud2f0"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 182
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/activity/CustomTab;

    const-string v6, "\ud0ed-\ucee4\uc2a4\ud140"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 184
    const/16 v2, 0xd

    new-array v2, v2, [Lexam/AndroidExam/AndroidExam$Example;

    .line 185
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/dialog/DialogTest;

    const-string v5, "\ub300\ud654\uc0c1\uc790"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 186
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/dialog/DialogButton;

    const-string v5, "\ub300\ud654\uc0c1\uc790 \ub2eb\uae30 \ubc84\ud2bc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 187
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/dialog/Cancelable;

    const-string v5, "Back \ubc84\ud2bc \uae08\uc9c0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 188
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/dialog/ShowDialog;

    const-string v5, "\ub300\ud654\uc0c1\uc790 \ubbf8\ub9ac \uc0dd\uc131"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 189
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/dialog/ErrorMessage1;

    const-string v5, "\uc5d0\ub7ec \uba54\uc2dc\uc9c0 \ucd9c\ub825-\uc548\ubcf4\uc784"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v11

    const/4 v3, 0x5

    .line 190
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/ErrorMessage2;

    const-string v6, "\uc5d0\ub7ec \uba54\uc2dc\uc9c0 \ucd9c\ub825-\ubcf4\uc784"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 191
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/Question1;

    const-string v6, "\uc9c8\ubb38\ud558\uae30 - 1\ub2e8\uacc4"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 192
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/Question2;

    const-string v6, "\uc9c8\ubb38\ud558\uae30 - 3\ub2e8\uacc4"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 193
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/SelectDialog1;

    const-string v6, "\ubaa9\ub85d \uc120\ud0dd"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 194
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/SelectDialog2;

    const-string v6, "\ub2e8\uc77c \uc120\ud0dd \ub300\ud654\uc0c1\uc790"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 195
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/SelectDialog3;

    const-string v6, "\ubcf5\uc218 \uc120\ud0dd \ub300\ud654\uc0c1\uc790"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 196
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/OrderDialog;

    const-string v6, "\uc0c1\ud488 \uc8fc\ubb38 \ub300\ud654\uc0c1\uc790"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 197
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/dialog/PopupTest;

    const-string v6, "\ud31d\uc5c5 \ud14c\uc2a4\ud2b8"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 199
    const/16 v2, 0xf

    new-array v2, v2, [Lexam/AndroidExam/AndroidExam$Example;

    .line 200
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/thread/ThreadTest;

    const-string v5, "\uc2a4\ub808\ub4dc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 201
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/thread/HandlerTest;

    const-string v5, "\ud578\ub4e4\ub7ec"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 202
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/thread/LooperTest;

    const-string v5, "\ub8e8\ud37c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 203
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/thread/Upload;

    const-string v5, "\ub300\ud654\uc0c1\uc790\uac00 \uc0ac\ub77c\uc9c0\uc9c0 \uc54a\uc74c"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 204
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/thread/Post;

    const-string v5, "\uc791\uc5c5 \ub4f1\ub85d \ud6c4 \uc989\uc2dc \ub9ac\ud134"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v11

    const/4 v3, 0x5

    .line 205
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/ANR;

    const-string v6, "ANR \ubb38\uc81c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 206
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/ANR2;

    const-string v6, "ANR \ud574\uacb0"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 207
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/LongTime;

    const-string v6, "\uae34 \uc791\uc5c5(\ube14\ub85c\ud0b9)"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 208
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/LongTime2;

    const-string v6, "\ud578\ub4e4\ub7ec\ub85c \uc791\uc5c5 \uacbd\uacfc \ud45c\uc2dc"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 209
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/LongTime3;

    const-string v6, "\ud504\ub85c\uadf8\ub798\uc2a4\ub85c \uacbd\uacfc \ud45c\uc2dc \ubc0f \ucde8\uc18c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 210
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/LongTime4;

    const-string v6, "\uc2a4\ub808\ub4dc \uc0ac\uc6a9"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 211
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/LongTime5;

    const-string v6, "AsyncTask \uc0ac\uc6a9"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 212
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/BackWork;

    const-string v6, "\ubc31\uadf8\ub77c\uc6b4\ub4dc \uc791\uc5c5"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 213
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/BackWork2;

    const-string v6, "\ubc31\uadf8\ub77c\uc6b4\ub4dc \uc791\uc5c5-\uc2a4\ub808\ub4dc"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 214
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/thread/BackWork3;

    const-string v6, "\ubc31\uadf8\ub77c\uc6b4\ub4dc \uc791\uc5c5-\ub300\uae30 \uc2a4\ub808\ub4dc"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 216
    const/16 v2, 0x23

    new-array v2, v2, [Lexam/AndroidExam/AndroidExam$Example;

    .line 217
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Draw/LinearGrad;

    const-string v5, "\uc9c1\uc120 \uadf8\ub798\ub514\uc5b8\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 218
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Draw/RadialGrad;

    const-string v5, "\uc6d0\ud615 \uadf8\ub798\ub514\uc5b8\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 219
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Draw/SweepGrad;

    const-string v5, "\uc6d0\uc8fc \uadf8\ub798\ub514\uc5b8\ud2b8"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 220
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Draw/BitmapSdr;

    const-string v5, "\ube44\ud2b8\ub9f5 \uc170\uc774\ub354"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 221
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Draw/ComposeSdr;

    const-string v5, "\uc870\ud569 \uc170\uc774\ub354"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v11

    const/4 v3, 0x5

    .line 222
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ShapeTest;

    const-string v6, "\uc170\uc774\ud504"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 223
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/BlurFlt;

    const-string v6, "\ube14\ub7ec \ud544\ud130"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 224
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/EmbossFlt;

    const-string v6, "\uc784\ubcf4\uc2f1 \ud544\ud130"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 225
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ColorFlt;

    const-string v6, "\uc0c9\uc0c1 \ud544\ud130"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 226
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ColorM;

    const-string v6, "\uc774\ubbf8\uc9c0 \ubc18\uc804"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 227
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/GrayScale;

    const-string v6, "\uadf8\ub808\uc774 \uc2a4\ucf00\uc77c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    .line 228
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Porter;

    const-string v6, "Porter, Duff\uc758 \uc0c9\uc0c1 \ubcc0\ud658 \uaddc\uce59"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    .line 229
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/DashPathEft;

    const-string v6, "\uc120 \ubaa8\uc591 \ubcc0\uacbd"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 230
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/CornerPathEft;

    const-string v6, "\ubaa8\uc11c\ub9ac \ubcc0\uacbd"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 231
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/PathDashEft;

    const-string v6, "\ud654\uc0b4\ud45c \ubaa8\uc591 \ub300\uc2dc"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xf

    .line 232
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/DashAnim;

    const-string v6, "\ub300\uc2dc \uc560\ub2c8\uba54\uc774\uc158"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x10

    .line 233
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Xfer;

    const-string v6, "Xfermode"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x11

    .line 234
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Dither;

    const-string v6, "\ub514\ub354\ub9c1"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x12

    .line 235
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Translate;

    const-string v6, "\uc774\ub3d9 \ubcc0\ud658"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x13

    .line 236
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Translate2;

    const-string v6, "\ubb38\uc790\uc5f4 \uc5f0\uc18d \ucd9c\ub825"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x14

    .line 237
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/SaveCanvas;

    const-string v6, "\uce94\ubc84\uc2a4 \uc0c1\ud0dc \uc800\uc7a5"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x15

    .line 238
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Skew;

    const-string v6, "\uae30\uc6b8\uc774\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x16

    .line 239
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Scale;

    const-string v6, "\ud655\ub300"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x17

    .line 240
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/TransOrder;

    const-string v6, "\ubcc0\ud658\uc758 \uc21c\uc11c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x18

    .line 241
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Rotate;

    const-string v6, "\ud68c\uc804 \ubcc0\ud658"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x19

    .line 242
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/FrameAni;

    const-string v6, "\ud504\ub808\uc784 \uc560\ub2c8\uba54\uc774\uc158"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    .line 243
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Tween;

    const-string v6, "\ud2b8\uc708 \uc560\ub2c8\uba54\uc774\uc158"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    .line 244
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/TweenListener;

    const-string v6, "\uc5f0\uc18d \uc560\ub2c8\uba54\uc774\uc158"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    .line 245
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Reflection;

    const-string v6, "SurfaceView \uc5f0\uad6c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    .line 246
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/Reflection2;

    const-string v6, "SurfaceView \uc5f0\uad6c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    .line 247
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ReDraw1;

    const-string v6, "\ub290\ub9b0 \uadf8\ub9ac\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    .line 248
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ReDraw2;

    const-string v6, "\uac1d\uccb4 \ubbf8\ub9ac \uc0dd\uc131"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x20

    .line 249
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ReDraw3;

    const-string v6, "\ud074\ub9ac\ud551 \ucd5c\uc18c\ud654"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x21

    .line 250
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ReDraw4;

    const-string v6, "\uc9c0\uc5f0\ub41c \uadf8\ub9ac\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x22

    .line 251
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Draw/ReDraw5;

    const-string v6, "\ube44\ud2b8\ub9f5 \ubc30\uacbd \uc0ac\uc6a9"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 253
    const/16 v2, 0xb

    new-array v2, v2, [Lexam/AndroidExam/AndroidExam$Example;

    .line 254
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Network/ConMgr;

    const-string v5, "\uc5f0\uacb0 \uad00\ub9ac\uc790"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 255
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Network/DownHtml;

    const-string v5, "HTML \ub2e4\uc6b4\ub85c\ub4dc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 256
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Network/AsyncDownHtml;

    const-string v5, "\ube44\ub3d9\uae30 \ub2e4\uc6b4\ub85c\ub4dc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 257
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Network/DownImage;

    const-string v5, "\uc774\ubbf8\uc9c0 \ub2e4\uc6b4\ub85c\ub4dc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 258
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/Network/WebService;

    const-string v5, "\ud2b8\uc704\ud130"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v11

    const/4 v3, 0x5

    .line 259
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Network/DomParser;

    const-string v6, "DOM \ud30c\uc11c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 260
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Network/DomParser2;

    const-string v6, "DOM\uc73c\ub85c \uc18d\uc131 \uc77d\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 261
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Network/SaxParser;

    const-string v6, "SAX \ud30c\uc11c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 262
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Network/PullParser;

    const-string v6, "PULL \ud30c\uc11c"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 263
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Network/JSONArrayTest;

    const-string v6, "JSON \ubc30\uc5f4 \uc77d\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    .line 264
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/Network/JSONObjectTest;

    const-string v6, "JSON \uac1d\uccb4 \uc77d\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 266
    const/16 v2, 0xa

    new-array v2, v2, [Lexam/AndroidExam/AndroidExam$Example;

    .line 267
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/service/NapAlarm;

    const-string v5, "\ub0ae\uc7a0 \uc2dc\uacc4"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 268
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/service/CustomNotiView;

    const-string v5, "\ucee4\uc2a4\ud140 \ud1b5\uc9c0 \ubdf0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    .line 269
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/service/DetectFree;

    const-string v5, "\uacf5\uc9dc \ub124\ud2b8\uc6cc\ud06c \ubc1c\uacac"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v9

    .line 270
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/service/DetectSaveZone;

    const-string v5, "\ud560\uc778 \uc9c0\uc5ed \ubc1c\uacac"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v10

    .line 271
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/service/OnSaveZone;

    const-string v5, "\ud560\uc778 \uc9c0\uc5ed \uac10\uc2dc"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v11

    const/4 v3, 0x5

    .line 272
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/service/WatchBattery;

    const-string v6, "\ubc30\ud130\ub9ac \uac10\uc2dc"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 273
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/service/WatchSdcard;

    const-string v6, "SdCard \uac10\uc2dc"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 274
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/service/AlarmTest;

    const-string v6, "\uc54c\ub78c \ud14c\uc2a4\ud2b8"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 275
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/external/NewsController;

    const-string v6, "\ub274\uc2a4 \ubcf4\uae30"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 276
    new-instance v4, Lexam/AndroidExam/AndroidExam$Example;

    const-class v5, Lexam/external/CalcClient;

    const-string v6, "\uc11c\ube44\uc2a4\ub85c \uc5f0\uc0b0"

    invoke-direct {v4, p0, v5, v6}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 278
    new-array v2, v9, [Lexam/AndroidExam/AndroidExam$Example;

    .line 279
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/external/NewsController;

    const-string v5, "\ub274\uc2a4 \ubcf4\uae30"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v8

    .line 280
    new-instance v3, Lexam/AndroidExam/AndroidExam$Example;

    const-class v4, Lexam/external/CalcClient;

    const-string v5, "\uc11c\ube44\uc2a4\ub85c \uc5f0\uc0b0"

    invoke-direct {v3, p0, v4, v5}, Lexam/AndroidExam/AndroidExam$Example;-><init>(Lexam/AndroidExam/AndroidExam;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lexam/AndroidExam/AndroidExam;->arExample:[[Lexam/AndroidExam/AndroidExam$Example;

    .line 284
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 285
    const-string v1, "3\uc7a5 \ub808\uc774\uc544\uc6c3(Layout)"

    aput-object v1, v0, v8

    .line 286
    const-string v1, "4\uc7a5 \ucd9c\ub825(Output)"

    aput-object v1, v0, v7

    .line 287
    const-string v1, "5\uc7a5, 6\uc7a5 \uc785\ub825, \uba54\ub274(Input)"

    aput-object v1, v0, v9

    .line 288
    const-string v1, "7~9\uc7a5 \uc704\uc82f(Widget)"

    aput-object v1, v0, v10

    .line 289
    const-string v1, "10\uc7a5 \uc790\ub8cc \uad00\ub9ac(Data)"

    aput-object v1, v0, v11

    const/4 v1, 0x5

    .line 290
    const-string v2, "11\uc7a5 \uc561\ud2f0\ube44\ud2f0(activity)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 291
    const-string v2, "12\uc7a5 \ub300\ud654\uc0c1\uc790(dialog)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 292
    const-string v2, "13\uc7a5 \uc2a4\ub808\ub4dc(thread)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 293
    const-string v2, "14\uc7a5 \uace0\uae09 \uadf8\ub9ac\uae30(Draw)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 294
    const-string v2, "15\uc7a5 \ub124\ud2b8\uc6cc\ud06c(Network)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 295
    const-string v2, "16\uc7a5 \uc11c\ube44\uc2a4service)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 296
    const-string v2, "\uc678\ubd80 \ud328\ud0a4\uc9c0(external)"

    aput-object v2, v0, v1

    iput-object v0, p0, Lexam/AndroidExam/AndroidExam;->arPackage:[Ljava/lang/String;

    .line 302
    iput-boolean v7, p0, Lexam/AndroidExam/AndroidExam;->mInitSelection:Z

    .line 26
    return-void
.end method


# virtual methods
.method public ChangePackage(I)V
    .locals 8
    .parameter "Package"

    .prologue
    .line 342
    iput p1, p0, Lexam/AndroidExam/AndroidExam;->mPackage:I

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v1, arTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lexam/AndroidExam/AndroidExam;->arExample:[[Lexam/AndroidExam/AndroidExam$Example;

    iget v5, p0, Lexam/AndroidExam/AndroidExam;->mPackage:I

    aget-object v5, v4, v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 349
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030044

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 351
    .local v0, Adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lexam/AndroidExam/AndroidExam;->mListActivity:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    move-object v2, p0

    .line 354
    .local v2, ctx:Landroid/content/Context;
    iget-object v4, p0, Lexam/AndroidExam/AndroidExam;->mListActivity:Landroid/widget/ListView;

    new-instance v5, Lexam/AndroidExam/AndroidExam$2;

    invoke-direct {v5, p0, v2}, Lexam/AndroidExam/AndroidExam$2;-><init>(Lexam/AndroidExam/AndroidExam;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 360
    return-void

    .line 345
    .end local v0           #Adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #ctx:Landroid/content/Context;
    :cond_0
    aget-object v3, v5, v4

    .line 346
    .local v3, e:Lexam/AndroidExam/AndroidExam$Example;
    iget-object v7, v3, Lexam/AndroidExam/AndroidExam$Example;->Title:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lexam/AndroidExam/AndroidExam;->setContentView(I)V

    .line 308
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lexam/AndroidExam/AndroidExam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lexam/AndroidExam/AndroidExam;->mListActivity:Landroid/widget/ListView;

    .line 309
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lexam/AndroidExam/AndroidExam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lexam/AndroidExam/AndroidExam;->mSpin:Landroid/widget/Spinner;

    .line 310
    iget-object v0, p0, Lexam/AndroidExam/AndroidExam;->mSpin:Landroid/widget/Spinner;

    const-string v1, "\ud328\ud0a4\uc9c0\ub97c \uc120\ud0dd\ud558\uc138\uc694."

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 313
    const v1, 0x1090008

    iget-object v2, p0, Lexam/AndroidExam/AndroidExam;->arPackage:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 312
    iput-object v0, p0, Lexam/AndroidExam/AndroidExam;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 314
    iget-object v0, p0, Lexam/AndroidExam/AndroidExam;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 315
    iget-object v0, p0, Lexam/AndroidExam/AndroidExam;->mSpin:Landroid/widget/Spinner;

    iget-object v1, p0, Lexam/AndroidExam/AndroidExam;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 317
    iget-object v0, p0, Lexam/AndroidExam/AndroidExam;->mSpin:Landroid/widget/Spinner;

    new-instance v1, Lexam/AndroidExam/AndroidExam$1;

    invoke-direct {v1, p0}, Lexam/AndroidExam/AndroidExam$1;-><init>(Lexam/AndroidExam/AndroidExam;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 339
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 365
    const-string v0, "\uc18c\uac1c"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 366
    const/4 v0, 0x2

    const-string v1, "\uc885\ub8cc"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 368
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 372
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 390
    :goto_0
    return v0

    .line 374
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    const-string v2, "\ud504\ub85c\uadf8\ub7a8 \uc18c\uac1c"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 376
    const-string v2, "\uc548\ub4dc\ub85c\uc774\ub4dc \ud504\ub85c\uadf8\ub798\ubc0d \uc815\ubcf5(\ud55c\ube5b\ubbf8\ub514\uc5b4)\uc758 \uc608\uc81c \ubaa8\uc74c \ud504\ub85c\uadf8\ub7a8\uc785\ub2c8\ub2e4.\n\uc0c1\ub2e8\uc758 \uc2a4\ud53c\ub108\uc5d0\uc11c \ud328\ud0a4\uc9c0\ub97c \uc120\ud0dd\ud558\uace0 \ubaa9\ub85d\uc5d0\uc11c \uc608\uc81c\ub97c \uc120\ud0dd\ud558\uc2ed\uc2dc\uc624."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 378
    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 379
    const-string v2, "\ub2eb\uae30"

    new-instance v3, Lexam/AndroidExam/AndroidExam$3;

    invoke-direct {v3, p0}, Lexam/AndroidExam/AndroidExam$3;-><init>(Lexam/AndroidExam/AndroidExam;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 386
    :pswitch_1
    invoke-virtual {p0}, Lexam/AndroidExam/AndroidExam;->finish()V

    .line 387
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
