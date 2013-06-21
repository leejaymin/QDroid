.class public Lkr/co/medinbiz/dto/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private hp:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lkr/co/medinbiz/dto/Contact;->hp:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lkr/co/medinbiz/dto/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lkr/co/medinbiz/dto/Contact;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setHp(Ljava/lang/String;)V
    .locals 0
    .parameter "hp"

    .prologue
    .line 11
    iput-object p1, p0, Lkr/co/medinbiz/dto/Contact;->hp:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 23
    iput-object p1, p0, Lkr/co/medinbiz/dto/Contact;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 17
    iput-object p1, p0, Lkr/co/medinbiz/dto/Contact;->status:Ljava/lang/String;

    .line 18
    return-void
.end method
