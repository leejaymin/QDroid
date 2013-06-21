.class public Lcom/superdroid/rpc/security/model/SuspectItem;
.super Ljava/lang/Object;
.source "SuspectItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x55bd7cd92784a7deL


# instance fields
.field protected _dateTime:Ljava/util/Date;

.field protected _desc:Ljava/lang/String;

.field protected _imei:Ljava/lang/String;

.field protected _locale:Ljava/lang/String;

.field protected _packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "pname"
    .parameter "desc"
    .parameter "locale"
    .parameter "imei"
    .parameter "dt"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_packageName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_desc:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_locale:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_imei:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_dateTime:Ljava/util/Date;

    .line 20
    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_dateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_locale:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(Ljava/util/Date;)V
    .locals 0
    .parameter "dateTime"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_dateTime:Ljava/util/Date;

    .line 70
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_desc:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_imei:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_locale:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/superdroid/rpc/security/model/SuspectItem;->_packageName:Ljava/lang/String;

    .line 38
    return-void
.end method
