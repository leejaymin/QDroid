.class Lcom/saybaby/helfer/TabRegister$1;
.super Ljava/lang/Object;
.source "TabRegister.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/saybaby/helfer/TabRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/high16 v6, 0x2

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 84
    :pswitch_0
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const-class v5, Lcom/saybaby/MainHome;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const-class v4, Lcom/saybaby/ultra/Ultra;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/saybaby/helfer/TabRegister;->memberAssecc(Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :pswitch_2
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, strLanguage:Ljava/lang/String;
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const-class v5, Lcom/saybaby/Pregnancy;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    .end local v0           #strLanguage:Ljava/lang/String;
    .end local v1           #systemLocale:Ljava/util/Locale;
    :pswitch_3
    invoke-static {}, Lcom/saybaby/helfer/TabRegister;->access$0()Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getForeignVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const v4, 0x7f0600d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkr/co/medinbiz/view/DialogGroup;->oneBtnDialog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const-class v4, Lcom/saybaby/Invite;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/saybaby/helfer/TabRegister;->inviteAssecc(Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :pswitch_4
    sget-object v2, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/saybaby/helfer/TabRegister;->mContext:Landroid/content/Context;

    const-class v5, Lcom/saybaby/Setting;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x7f08006c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
