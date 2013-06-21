.class public Lkr/co/medinbiz/helper/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# static fields
.field public static appVersion:Ljava/lang/String;

.field public static isSamsung:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lkr/co/medinbiz/helper/AppData;->isSamsung:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
