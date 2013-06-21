.class public Lcom/b2bstudio/graphics/library;
.super Ljava/lang/Object;
.source "library.java"


# static fields
.field static bag:[Landroid/graphics/drawable/Drawable;

.field static digger:[Landroid/graphics/drawable/Drawable;

.field static fire:[Landroid/graphics/drawable/Drawable;

.field static gold:[Landroid/graphics/drawable/Drawable;

.field static monster:[Landroid/graphics/drawable/Drawable;

.field static numbers:[Landroid/graphics/drawable/Drawable;

.field static textures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceById(Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "key"

    .prologue
    .line 104
    sget-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static loadlibrary(Landroid/content/res/Resources;)V
    .locals 8
    .parameter "r"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    .line 23
    const/16 v0, 0x1e

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    .line 25
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02000a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 26
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020015

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 27
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020020

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 28
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020022

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 29
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020023

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 30
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    const v2, 0x7f020024

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 31
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    const v2, 0x7f020025

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 32
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    const v2, 0x7f020026

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 33
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    const v2, 0x7f020027

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 34
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    const v2, 0x7f02000b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xa

    const v2, 0x7f02000c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    const v2, 0x7f02000d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xc

    const v2, 0x7f02000e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xd

    const v2, 0x7f02000f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xe

    const v2, 0x7f020010

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xf

    const v2, 0x7f020011

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 41
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x10

    const v2, 0x7f020012

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 42
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x11

    const v2, 0x7f020013

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x12

    const v2, 0x7f020014

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x13

    const v2, 0x7f020016

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x14

    const v2, 0x7f020017

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x15

    const v2, 0x7f020018

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x16

    const v2, 0x7f020019

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x17

    const v2, 0x7f02001a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 49
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x18

    const v2, 0x7f02001b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x19

    const v2, 0x7f02001c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x1a

    const v2, 0x7f02001d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x1b

    const v2, 0x7f02001e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x1c

    const v2, 0x7f02001f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x1d

    const v2, 0x7f020021

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    const-string v1, "digger"

    sget-object v2, Lcom/b2bstudio/graphics/library;->digger:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    .line 60
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02003f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 61
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020043

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 62
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020044

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 63
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020045

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 64
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020046

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 65
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    const v2, 0x7f020047

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    const v2, 0x7f020048

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 67
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    const v2, 0x7f020049

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x8

    const v2, 0x7f02004a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    const v2, 0x7f020040

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xa

    const v2, 0x7f020041

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    sget-object v0, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xb

    const v2, 0x7f020042

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    sget-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    const-string v1, "monster"

    sget-object v2, Lcom/b2bstudio/graphics/library;->monster:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/b2bstudio/graphics/library;->bag:[Landroid/graphics/drawable/Drawable;

    .line 77
    sget-object v0, Lcom/b2bstudio/graphics/library;->bag:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020002

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 78
    sget-object v0, Lcom/b2bstudio/graphics/library;->bag:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020003

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 79
    sget-object v0, Lcom/b2bstudio/graphics/library;->bag:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020004

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 80
    sget-object v0, Lcom/b2bstudio/graphics/library;->bag:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020005

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 82
    sget-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    const-string v1, "bag"

    sget-object v2, Lcom/b2bstudio/graphics/library;->bag:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/b2bstudio/graphics/library;->gold:[Landroid/graphics/drawable/Drawable;

    .line 86
    sget-object v0, Lcom/b2bstudio/graphics/library;->gold:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020038

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 87
    sget-object v0, Lcom/b2bstudio/graphics/library;->gold:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020039

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 88
    sget-object v0, Lcom/b2bstudio/graphics/library;->gold:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02003a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 89
    sget-object v0, Lcom/b2bstudio/graphics/library;->gold:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02003b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 91
    sget-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    const-string v1, "gold"

    sget-object v2, Lcom/b2bstudio/graphics/library;->gold:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/b2bstudio/graphics/library;->fire:[Landroid/graphics/drawable/Drawable;

    .line 95
    sget-object v0, Lcom/b2bstudio/graphics/library;->fire:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020032

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v3

    .line 96
    sget-object v0, Lcom/b2bstudio/graphics/library;->fire:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020033

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 97
    sget-object v0, Lcom/b2bstudio/graphics/library;->fire:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020034

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 98
    sget-object v0, Lcom/b2bstudio/graphics/library;->fire:[Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020035

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 100
    sget-object v0, Lcom/b2bstudio/graphics/library;->textures:Ljava/util/Hashtable;

    const-string v1, "fire"

    sget-object v2, Lcom/b2bstudio/graphics/library;->fire:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method
