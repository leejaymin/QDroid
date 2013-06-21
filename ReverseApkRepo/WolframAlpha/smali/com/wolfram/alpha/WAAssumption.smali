.class public interface abstract Lcom/wolfram/alpha/WAAssumption;
.super Ljava/lang/Object;
.source "WAAssumption.java"


# static fields
.field public static final TYPE_ANGLEUNIT:Ljava/lang/String; = "AngleUnit"

.field public static final TYPE_ATTRIBUTE:Ljava/lang/String; = "Attribute"

.field public static final TYPE_CLASH:Ljava/lang/String; = "Clash"

.field public static final TYPE_COORDINATESYSTEM:Ljava/lang/String; = "CoordinateSystem"

.field public static final TYPE_DATEORDER:Ljava/lang/String; = "DateOrder"

.field public static final TYPE_DNAORSTRING:Ljava/lang/String; = "DNAOrString"

.field public static final TYPE_FORMULASELECT:Ljava/lang/String; = "FormulaSelect"

.field public static final TYPE_FORMULASOLVE:Ljava/lang/String; = "FormulaSolve"

.field public static final TYPE_FORMULAVARIABLE:Ljava/lang/String; = "FormulaVariable"

.field public static final TYPE_FORMULAVARIABLEINCLUDE:Ljava/lang/String; = "FormulaVariableInclude"

.field public static final TYPE_FORMULAVARIABLEOPTION:Ljava/lang/String; = "FormulaVariableOption"

.field public static final TYPE_FUNCTION:Ljava/lang/String; = "Function"

.field public static final TYPE_I:Ljava/lang/String; = "I"

.field public static final TYPE_LISTORNUMBER:Ljava/lang/String; = "ListOrNumber"

.field public static final TYPE_LISTORTIMES:Ljava/lang/String; = "ListOrTimes"

.field public static final TYPE_MIXEDFRACTION:Ljava/lang/String; = "MixedFraction"

.field public static final TYPE_MORTALITYYEARDOB:Ljava/lang/String; = "MortalityYearDOB"

.field public static final TYPE_MULTICLASH:Ljava/lang/String; = "MultiClash"

.field public static final TYPE_NUMBERBASE:Ljava/lang/String; = "NumberBase"

.field public static final TYPE_SUBCATEGORY:Ljava/lang/String; = "SubCategory"

.field public static final TYPE_TIDESTATION:Ljava/lang/String; = "TideStation"

.field public static final TYPE_TIMEAMORPM:Ljava/lang/String; = "TimeAMOrPM"

.field public static final TYPE_UNIT:Ljava/lang/String; = "Unit"


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getCurrent()I
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptions()[Ljava/lang/String;
.end method

.method public abstract getInputs()[Ljava/lang/String;
.end method

.method public abstract getNames()[Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getValidities()[Z
.end method

.method public abstract getWord()Ljava/lang/String;
.end method

.method public abstract getWords()[Ljava/lang/String;
.end method
