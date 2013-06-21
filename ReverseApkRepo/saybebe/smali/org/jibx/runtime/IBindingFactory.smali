.class public interface abstract Lorg/jibx/runtime/IBindingFactory;
.super Ljava/lang/Object;
.source "IBindingFactory.java"


# static fields
.field public static final ABMAP_ATTRMARMETH_INDEX:I = 0x7

.field public static final ABMAP_ATTRPRESMETH_INDEX:I = 0x5

.field public static final ABMAP_ATTRUMARMETH_INDEX:I = 0x6

.field public static final ABMAP_CLASSNAME_INDEX:I = 0x1

.field public static final ABMAP_COMPLETEMETH_INDEX:I = 0x3

.field public static final ABMAP_CONTMARMETH_INDEX:I = 0xa

.field public static final ABMAP_CONTPRESMETH_INDEX:I = 0x8

.field public static final ABMAP_CONTUMARMETH_INDEX:I = 0x9

.field public static final ABMAP_COUNT:I = 0xb

.field public static final ABMAP_CREATEMETH_INDEX:I = 0x2

.field public static final ABMAP_MAPPINGNAME_INDEX:I = 0x0

.field public static final ABMAP_PREPAREMETH_INDEX:I = 0x4

.field public static final COMPATIBLE_VERSION_MASK:I = -0x10000

.field public static final CURRENT_VERSION_NAME:Ljava/lang/String; = "jibx_1_2_3"

.field public static final CURRENT_VERSION_NUMBER:I = 0x30000


# virtual methods
.method public abstract createMarshallingContext()Lorg/jibx/runtime/IMarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract createUnmarshallingContext()Lorg/jibx/runtime/IUnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract getAbstractMappingNamespaces(I)[I
.end method

.method public abstract getAbstractMappings()[[Ljava/lang/String;
.end method

.method public abstract getBaseBindingFactories()[Ljava/lang/String;
.end method

.method public abstract getBaseBindings()[Ljava/lang/String;
.end method

.method public abstract getBindingClasses()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract getBindingName()Ljava/lang/String;
.end method

.method public abstract getClassIndexMap()Lorg/jibx/runtime/impl/StringIntHashMap;
.end method

.method public abstract getCompilerDistribution()Ljava/lang/String;
.end method

.method public abstract getCompilerVersion()I
.end method

.method public abstract getElementNames()[Ljava/lang/String;
.end method

.method public abstract getElementNamespaces()[Ljava/lang/String;
.end method

.method public abstract getHash()I
.end method

.method public abstract getMajorVersion()I
.end method

.method public abstract getMappedClasses()[Ljava/lang/String;
.end method

.method public abstract getMarshallerClass(I)Ljava/lang/Class;
.end method

.method public abstract getMarshallerClasses()[Ljava/lang/String;
.end method

.method public abstract getMinorVersion()I
.end method

.method public abstract getNamespaceTranslationTableMap()Ljava/util/Map;
.end method

.method public abstract getNamespaces()[Ljava/lang/String;
.end method

.method public abstract getPrefixes()[Ljava/lang/String;
.end method

.method public abstract getTypeIndex(Ljava/lang/String;)I
.end method

.method public abstract getUnmarshalMap()Ljava/util/Map;
.end method

.method public abstract getUnmarshallerClass(I)Ljava/lang/Class;
.end method

.method public abstract getUnmarshallerClasses()[Ljava/lang/String;
.end method

.method public abstract loadClass(Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract verifyBaseBindings()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method
