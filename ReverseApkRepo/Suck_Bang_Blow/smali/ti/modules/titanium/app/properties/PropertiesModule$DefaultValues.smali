.class public Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
.super Ljava/lang/Object;
.source "PropertiesModule.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollDefaultValueProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/app/properties/PropertiesModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValues"
.end annotation


# static fields
.field protected static _instance:Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;

    invoke-direct {v0}, Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;-><init>()V

    sput-object v0, Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;->_instance:Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;->_instance:Lti/modules/titanium/app/properties/PropertiesModule$DefaultValues;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method
