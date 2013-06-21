.class public Lkr/co/medinbiz/dto/MemberList;
.super Ljava/lang/Object;
.source "MemberList.java"


# instance fields
.field private invites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Invite;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Invite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lkr/co/medinbiz/dto/MemberList;->invites:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lkr/co/medinbiz/dto/MemberList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lkr/co/medinbiz/dto/MemberList;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setInvites(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Invite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, invites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Invite;>;"
    iput-object p1, p0, Lkr/co/medinbiz/dto/MemberList;->invites:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 13
    iput-object p1, p0, Lkr/co/medinbiz/dto/MemberList;->result:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 19
    iput-object p1, p0, Lkr/co/medinbiz/dto/MemberList;->type:Ljava/lang/String;

    .line 20
    return-void
.end method
