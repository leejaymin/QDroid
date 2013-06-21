.class Lorg/hk/sticky/StickyMainActivity$1;
.super Ljava/lang/Object;
.source "StickyMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hk/sticky/StickyMainActivity;->showAlertDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hk/sticky/StickyMainActivity;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/hk/sticky/StickyMainActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hk/sticky/StickyMainActivity$1;->this$0:Lorg/hk/sticky/StickyMainActivity;

    iput-object p2, p0, Lorg/hk/sticky/StickyMainActivity$1;->val$activity:Landroid/app/Activity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 60
    iget-object v0, p0, Lorg/hk/sticky/StickyMainActivity$1;->this$0:Lorg/hk/sticky/StickyMainActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/hk/sticky/StickyMainActivity;->setResult(I)V

    .line 61
    iget-object v0, p0, Lorg/hk/sticky/StickyMainActivity$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    return-void
.end method
