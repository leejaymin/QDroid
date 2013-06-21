.class public Lorg/appcelerator/kroll/KrollScriptableDict$Entry;
.super Ljava/lang/Object;
.source "KrollScriptableDict.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/kroll/KrollScriptableDict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/appcelerator/kroll/KrollScriptableDict$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field protected key:Ljava/lang/String;

.field final synthetic this$0:Lorg/appcelerator/kroll/KrollScriptableDict;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollScriptableDict;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"

    .prologue
    .line 73
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->this$0:Lorg/appcelerator/kroll/KrollScriptableDict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->key:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->value:Ljava/lang/Object;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->compareTo(Lorg/appcelerator/kroll/KrollScriptableDict$Entry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/appcelerator/kroll/KrollScriptableDict$Entry;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 95
    iget-object v0, p1, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->this$0:Lorg/appcelerator/kroll/KrollScriptableDict;

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollScriptableDict$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollScriptableDict;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
