.class Lcom/adfonic/android/AdfonicView$2;
.super Ljava/lang/Object;
.source "AdfonicView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicView;->resetContentAreaToDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicView;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/adfonic/android/AdfonicView$2;->this$0:Lcom/adfonic/android/AdfonicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/adfonic/android/AdfonicView$2;->this$0:Lcom/adfonic/android/AdfonicView;

    #calls: Lcom/adfonic/android/AdfonicView;->resetContentAreaToDefaultOnUiThread()V
    invoke-static {v0}, Lcom/adfonic/android/AdfonicView;->access$100(Lcom/adfonic/android/AdfonicView;)V

    .line 410
    return-void
.end method
