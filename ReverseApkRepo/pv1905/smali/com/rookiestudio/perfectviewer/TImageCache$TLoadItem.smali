.class Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;
.super Ljava/lang/Object;
.source "TImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TLoadItem"
.end annotation


# instance fields
.field Direction:I

.field FileName:Ljava/lang/String;

.field FileOrder:I

.field Loading:Z

.field PageIndex:I

.field Password:Ljava/lang/String;

.field Resample:I

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TImageCache;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TImageCache;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->this$0:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TImageCache$TLoadItem;->Password:Ljava/lang/String;

    return-void
.end method
