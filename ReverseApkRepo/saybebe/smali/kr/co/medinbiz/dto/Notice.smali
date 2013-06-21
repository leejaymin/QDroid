.class public Lkr/co/medinbiz/dto/Notice;
.super Ljava/lang/Object;
.source "Notice.java"


# instance fields
.field private id:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lkr/co/medinbiz/dto/Notice;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lkr/co/medinbiz/dto/Notice;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 10
    iput-object p1, p0, Lkr/co/medinbiz/dto/Notice;->id:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/dto/Notice;->text:Ljava/lang/String;

    .line 17
    return-void
.end method
