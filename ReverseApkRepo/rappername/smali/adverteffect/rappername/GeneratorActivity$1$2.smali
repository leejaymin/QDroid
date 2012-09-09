.class Ladverteffect/rappername/GeneratorActivity$1$2;
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
    iput-object p1, p0, Ladverteffect/rappername/GeneratorActivity$1$2;->this$1:Ladverteffect/rappername/GeneratorActivity$1;

    iput-object p2, p0, Ladverteffect/rappername/GeneratorActivity$1$2;->val$dialog:Landroid/app/Dialog;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 137
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity$1$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Ladverteffect/rappername/GeneratorActivity$1$2;->this$1:Ladverteffect/rappername/GeneratorActivity$1;

    #getter for: Ladverteffect/rappername/GeneratorActivity$1;->this$0:Ladverteffect/rappername/GeneratorActivity;
    invoke-static {v1}, Ladverteffect/rappername/GeneratorActivity$1;->access$0(Ladverteffect/rappername/GeneratorActivity$1;)Ladverteffect/rappername/GeneratorActivity;

    move-result-object v1

    const-string v2, "SELECT"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ladverteffect/rappername/GeneratorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    return-void
.end method
