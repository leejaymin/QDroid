.class public Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
.super Ljava/lang/Object;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/MapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapData"
.end annotation


# instance fields
.field public final isUsingGoogleMaps:Z

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public zoom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;->isUsingGoogleMaps:Z

    return-void
.end method
