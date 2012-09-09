.class Ladverteffect/rappername/GeneratorActivity$1$1;
.super Ljava/lang/Object;
.source "GeneratorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladverteffect/rappername/GeneratorActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ladverteffect/rappername/GeneratorActivity$1;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Ladverteffect/rappername/GeneratorActivity$1;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ladverteffect/rappername/GeneratorActivity$1$1;->this$1:Ladverteffect/rappername/GeneratorActivity$1;

    iput-object p2, p0, Ladverteffect/rappername/GeneratorActivity$1$1;->val$dialog:Landroid/app/Dialog;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 125
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity$1$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, splash:Landroid/content/Intent;
    const-string v1, "output"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity$1$1;->this$1:Ladverteffect/rappername/GeneratorActivity$1;

    #getter for: Ladverteffect/rappername/GeneratorActivity$1;->this$0:Ladverteffect/rappername/GeneratorActivity;
    invoke-static {v1}, Ladverteffect/rappername/GeneratorActivity$1;->access$0(Ladverteffect/rappername/GeneratorActivity$1;)Ladverteffect/rappername/GeneratorActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ladverteffect/rappername/GeneratorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
