.class Lcom/adfonic/android/AdfonicActivity$2;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->setInterstitialTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicActivity;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$2;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity$2;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-virtual {v0}, Lcom/adfonic/android/AdfonicActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
