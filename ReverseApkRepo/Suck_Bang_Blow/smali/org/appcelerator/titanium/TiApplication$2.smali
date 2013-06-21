.class Lorg/appcelerator/titanium/TiApplication$2;
.super Ljava/lang/Object;
.source "TiApplication.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiApplication;->methodFor(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiApplication;

.field final synthetic val$hierarchy:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiApplication;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication$2;->this$0:Lorg/appcelerator/titanium/TiApplication;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiApplication$2;->val$hierarchy:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/TiApplication$2;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 342
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication$2;->val$hierarchy:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 343
    .local v0, h1:I
    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication$2;->val$hierarchy:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 344
    .local v1, h2:I
    sub-int v2, v0, v1

    return v2
.end method
