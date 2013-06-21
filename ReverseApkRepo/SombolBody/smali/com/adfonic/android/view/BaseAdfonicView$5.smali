.class Lcom/adfonic/android/view/BaseAdfonicView$5;
.super Lcom/adfonic/android/view/task/TelephoneUrlOpenerTask;
.source "BaseAdfonicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/view/BaseAdfonicView;->executeTelephoneCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/BaseAdfonicView;


# direct methods
.method constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$5;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-direct {p0}, Lcom/adfonic/android/view/task/TelephoneUrlOpenerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$5;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
