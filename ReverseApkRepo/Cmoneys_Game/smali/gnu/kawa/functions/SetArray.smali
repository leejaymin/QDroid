.class Lgnu/kawa/functions/SetArray;
.super Lgnu/mapping/Procedure2;
.source "Setter.java"


# instance fields
.field array:Ljava/lang/Object;

.field elementType:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Language;)V
    .locals 2
    .parameter "array"
    .parameter "language"

    .prologue
    .line 105
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 107
    .local v0, elementClass:Ljava/lang/Class;
    invoke-virtual {p2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/functions/SetArray;->elementType:Lgnu/bytecode/Type;

    .line 108
    iput-object p1, p0, Lgnu/kawa/functions/SetArray;->array:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 113
    iget-object v0, p0, Lgnu/kawa/functions/SetArray;->elementType:Lgnu/bytecode/Type;

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 114
    iget-object v0, p0, Lgnu/kawa/functions/SetArray;->array:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
