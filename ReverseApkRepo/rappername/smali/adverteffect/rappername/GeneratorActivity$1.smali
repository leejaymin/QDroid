.class Ladverteffect/rappername/GeneratorActivity$1;
.super Ljava/lang/Object;
.source "GeneratorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladverteffect/rappername/GeneratorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ladverteffect/rappername/GeneratorActivity;


# direct methods
.method constructor <init>(Ladverteffect/rappername/GeneratorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ladverteffect/rappername/GeneratorActivity$1;->this$0:Ladverteffect/rappername/GeneratorActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ladverteffect/rappername/GeneratorActivity$1;)Ladverteffect/rappername/GeneratorActivity;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Ladverteffect/rappername/GeneratorActivity$1;->this$0:Ladverteffect/rappername/GeneratorActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 108
    new-instance v2, Landroid/app/Dialog;

    iget-object v4, p0, Ladverteffect/rappername/GeneratorActivity$1;->this$0:Ladverteffect/rappername/GeneratorActivity;

    invoke-direct {v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 110
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 111
    .local v3, window:Landroid/view/Window;
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 112
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 113
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 116
    const/high16 v4, 0x7f03

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 118
    const v4, 0x7f050002

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 120
    .local v0, btnCamera:Landroid/widget/Button;
    new-instance v4, Ladverteffect/rappername/GeneratorActivity$1$1;

    invoke-direct {v4, p0, v2}, Ladverteffect/rappername/GeneratorActivity$1$1;-><init>(Ladverteffect/rappername/GeneratorActivity$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v4, 0x7f050003

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 134
    .local v1, btnLib:Landroid/widget/Button;
    new-instance v4, Ladverteffect/rappername/GeneratorActivity$1$2;

    invoke-direct {v4, p0, v2}, Ladverteffect/rappername/GeneratorActivity$1$2;-><init>(Ladverteffect/rappername/GeneratorActivity$1;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 147
    return-void
.end method
