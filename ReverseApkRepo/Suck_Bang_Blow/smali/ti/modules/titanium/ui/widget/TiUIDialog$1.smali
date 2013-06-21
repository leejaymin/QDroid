.class Lti/modules/titanium/ui/widget/TiUIDialog$1;
.super Ljava/lang/Object;
.source "TiUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIDialog;->processOptions([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIDialog;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIDialog$1;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIDialog$1;->this$0:Lti/modules/titanium/ui/widget/TiUIDialog;

    invoke-virtual {v0, p2}, Lti/modules/titanium/ui/widget/TiUIDialog;->handleEvent(I)V

    .line 102
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 103
    return-void
.end method
