.class public Lkr/co/medinbiz/dto/Invite;
.super Ljava/lang/Object;
.source "Invite.java"


# instance fields
.field private mnum:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMnum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lkr/co/medinbiz/dto/Invite;->mnum:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lkr/co/medinbiz/dto/Invite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMnum(Ljava/lang/String;)V
    .locals 0
    .parameter "mnum"

    .prologue
    .line 10
    iput-object p1, p0, Lkr/co/medinbiz/dto/Invite;->mnum:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/dto/Invite;->name:Ljava/lang/String;

    .line 17
    return-void
.end method
