.class public Lcom/superdroid/rpc/security/model/VirusItem;
.super Ljava/lang/Object;
.source "VirusItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x445b7ed2f383565aL


# instance fields
.field protected _addTime:Ljava/util/Date;

.field protected _desc:Ljava/lang/String;

.field protected _packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "pname"
    .parameter "desc"
    .parameter "dt"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_packageName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_desc:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_addTime:Ljava/util/Date;

    .line 17
    return-void
.end method


# virtual methods
.method public getAddTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_addTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(Ljava/util/Date;)V
    .locals 0
    .parameter "addTime"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_addTime:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_desc:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/VirusItem;->_packageName:Ljava/lang/String;

    .line 30
    return-void
.end method
