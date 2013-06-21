.class public Lcom/wolfram/android/alpha/InfoButtonData;
.super Ljava/lang/Object;
.source "InfoButtonData.java"


# instance fields
.field public infoType:Ljava/lang/String;

.field public podTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "podTitle"
    .parameter "infoType"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/wolfram/android/alpha/InfoButtonData;->podTitle:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/wolfram/android/alpha/InfoButtonData;->infoType:Ljava/lang/String;

    .line 15
    return-void
.end method
