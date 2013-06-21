.class Lcom/ui/LapseIt/StartView$8;
.super Ljava/lang/Object;
.source "StartView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/StartView;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/StartView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/StartView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/StartView$8;->this$0:Lcom/ui/LapseIt/StartView;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 392
    const-string v0, "tutorial_after_no"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 393
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 394
    return-void
.end method
