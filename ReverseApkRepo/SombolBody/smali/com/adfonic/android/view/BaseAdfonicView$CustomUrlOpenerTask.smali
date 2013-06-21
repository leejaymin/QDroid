.class Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;
.super Lcom/adfonic/android/view/task/UrlOpenerTask;
.source "BaseAdfonicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adfonic/android/view/BaseAdfonicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomUrlOpenerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/BaseAdfonicView;


# direct methods
.method private constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-direct {p0}, Lcom/adfonic/android/view/task/UrlOpenerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;Lcom/adfonic/android/view/BaseAdfonicView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;-><init>(Lcom/adfonic/android/view/BaseAdfonicView;)V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected openUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "destinationUrl"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$CustomUrlOpenerTask;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->open(Ljava/lang/String;)V

    .line 366
    return-void
.end method
