.class public Lorg/appcelerator/kroll/KrollArgument;
.super Ljava/lang/Object;
.source "KrollArgument.java"


# instance fields
.field protected isValueDefault:Z

.field protected name:Ljava/lang/String;

.field protected optional:Z

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollArgument;->optional:Z

    .line 17
    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollArgument;->isValueDefault:Z

    .line 20
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollArgument;->name:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollArgument;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollArgument;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollArgument;->optional:Z

    return v0
.end method

.method public isValueDefault()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollArgument;->isValueDefault:Z

    return v0
.end method

.method public setOptional(Z)V
    .locals 0
    .parameter "optional"

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/appcelerator/kroll/KrollArgument;->optional:Z

    .line 46
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 37
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollArgument;->value:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setValueDefault(Z)V
    .locals 0
    .parameter "isValueDefault"

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/appcelerator/kroll/KrollArgument;->isValueDefault:Z

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    const-string v0, "\"%s\"=%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollArgument;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/appcelerator/kroll/KrollArgument;->value:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lorg/appcelerator/kroll/KrollArgument;->isValueDefault:Z

    if-eqz v3, :cond_0

    const-string v3, "(default)"

    :goto_0
    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method
