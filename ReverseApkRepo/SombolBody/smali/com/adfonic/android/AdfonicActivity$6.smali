.class Lcom/adfonic/android/AdfonicActivity$6;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->showInterstitialContent()V
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
    .line 354
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$6;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "paramView"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity$6;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-virtual {v0}, Lcom/adfonic/android/AdfonicActivity;->finish()V

    .line 358
    return-void
.end method
