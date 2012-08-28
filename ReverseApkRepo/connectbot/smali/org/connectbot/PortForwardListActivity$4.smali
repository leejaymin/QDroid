.class Lorg/connectbot/PortForwardListActivity$4;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PortForwardListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PortForwardListActivity$4;)Lorg/connectbot/PortForwardListActivity;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v3, p0, Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v3, v3, Lorg/connectbot/PortForwardListActivity;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, portForwardView:Landroid/view/View;
    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 180
    .local v0, destEdit:Landroid/widget/EditText;
    const v3, 0x7f0b0025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 182
    .local v2, typeSpinner:Landroid/widget/Spinner;
    new-instance v3, Lorg/connectbot/PortForwardListActivity$4$1;

    invoke-direct {v3, p0, v0}, Lorg/connectbot/PortForwardListActivity$4$1;-><init>(Lorg/connectbot/PortForwardListActivity$4;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 191
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/connectbot/PortForwardListActivity$4;->this$0:Lorg/connectbot/PortForwardListActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 193
    const v4, 0x7f080094

    new-instance v5, Lorg/connectbot/PortForwardListActivity$4$2;

    invoke-direct {v5, p0, v1, v2, v0}, Lorg/connectbot/PortForwardListActivity$4$2;-><init>(Lorg/connectbot/PortForwardListActivity$4;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 233
    const v4, 0x7f0800b3

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 235
    const/4 v3, 0x1

    return v3
.end method
