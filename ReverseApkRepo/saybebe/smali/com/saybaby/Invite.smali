.class public Lcom/saybaby/Invite;
.super Lkr/co/medinbiz/CommonActivity;
.source "Invite.java"


# instance fields
.field private invite:Lkr/co/medinbiz/widget/invite/InviteMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lkr/co/medinbiz/CommonActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lkr/co/medinbiz/CommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lkr/co/medinbiz/widget/invite/InviteMain;

    iget-object v1, p0, Lcom/saybaby/Invite;->mainview:Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/saybaby/Invite;->invite:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Lkr/co/medinbiz/CommonActivity;->onResume()V

    .line 17
    invoke-static {p0}, Lcom/saybaby/helfer/TabRegister;->TabRegist(Landroid/app/Activity;)V

    .line 18
    return-void
.end method
