.class public final Lcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antitheft/gui/SendCommandInfoActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antitheft/gui/SendCommandInfoActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcb;-><init>(Lcom/kms/antitheft/gui/SendCommandInfoActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antitheft/gui/SendCommandInfoActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcb;->a:Lcom/kms/antitheft/gui/SendCommandInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcb;->a:Lcom/kms/antitheft/gui/SendCommandInfoActivity;

    const-class v2, Lcom/kms/additional/gui/SendCommandSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    packed-switch p2, :pswitch_data_0

    .line 99
    :goto_0
    iget-object v1, p0, Lcb;->a:Lcom/kms/antitheft/gui/SendCommandInfoActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antitheft/gui/SendCommandInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    :cond_0
    return-void

    .line 84
    :pswitch_0
    const-string v1, "command"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 87
    :pswitch_1
    const-string v1, "command"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 90
    :pswitch_2
    const-string v1, "command"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 93
    :pswitch_3
    const-string v1, "command"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 96
    :pswitch_4
    const-string v1, "command"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
