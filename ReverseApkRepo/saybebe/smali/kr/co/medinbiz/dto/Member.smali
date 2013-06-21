.class public Lkr/co/medinbiz/dto/Member;
.super Ljava/lang/Object;
.source "Member.java"


# instance fields
.field private babydue:Ljava/lang/String;

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
.method public getBabydue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lkr/co/medinbiz/dto/Member;->babydue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lkr/co/medinbiz/dto/Member;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBabydue(Ljava/lang/String;)V
    .locals 0
    .parameter "babydue"

    .prologue
    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/dto/Member;->babydue:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 10
    iput-object p1, p0, Lkr/co/medinbiz/dto/Member;->name:Ljava/lang/String;

    .line 11
    return-void
.end method
