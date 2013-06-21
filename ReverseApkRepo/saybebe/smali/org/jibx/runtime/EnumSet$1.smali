.class Lorg/jibx/runtime/EnumSet$1;
.super Ljava/lang/Object;
.source "EnumSet.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/jibx/runtime/EnumSet;


# direct methods
.method constructor <init>(Lorg/jibx/runtime/EnumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jibx/runtime/EnumSet$1;->this$0:Lorg/jibx/runtime/EnumSet;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 75
    check-cast p1, Lorg/jibx/runtime/EnumSet$EnumItem;

    .end local p1
    iget-object v0, p1, Lorg/jibx/runtime/EnumSet$EnumItem;->m_name:Ljava/lang/String;

    check-cast p2, Lorg/jibx/runtime/EnumSet$EnumItem;

    .end local p2
    iget-object v1, p2, Lorg/jibx/runtime/EnumSet$EnumItem;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
