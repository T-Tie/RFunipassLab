; ModuleID = '/tmp/tmpm4sli50t.cpp'
source_filename = "/tmp/tmpm4sli50t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@t = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3sumiPA100_i(i32 noundef %n, ptr noundef %a) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %if.end
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %3, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  store i32 %5, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom6
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %for.body5
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %13, i64 %idxprom12
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %16, ptr %min, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !12

for.end:                                          ; preds = %for.cond3
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc24, %for.end
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond17
  %20 = load i32, ptr %min, align 4, !tbaa !5
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom20
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %24 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %20
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body19
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, ptr %k, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !15

for.end26:                                        ; preds = %for.cond17
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc64, %for.end29
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %27, %28
  br i1 %cmp31, label %for.body32, label %for.end66

for.body32:                                       ; preds = %for.cond30
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds [100 x i32], ptr %29, i64 0
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %31 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  store i32 %31, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc50, %for.body32
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %33 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %32, %33
  br i1 %cmp37, label %for.body38, label %for.end52

for.body38:                                       ; preds = %for.cond36
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom39 = sext i32 %35 to i64
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %34, i64 %idxprom39
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds [100 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %37 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %38 = load i32, ptr %min, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %37, %38
  br i1 %cmp43, label %if.then44, label %if.end49

if.then44:                                        ; preds = %for.body38
  %39 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %40 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %39, i64 %idxprom45
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %42 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  store i32 %42, ptr %min, align 4, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %for.body38
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %43 = load i32, ptr %k, align 4, !tbaa !5
  %inc51 = add nsw i32 %43, 1
  store i32 %inc51, ptr %k, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !17

for.end52:                                        ; preds = %for.cond36
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc61, %for.end52
  %44 = load i32, ptr %k, align 4, !tbaa !5
  %45 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %for.body55, label %for.end63

for.body55:                                       ; preds = %for.cond53
  %46 = load i32, ptr %min, align 4, !tbaa !5
  %47 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %48 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom56 = sext i32 %48 to i64
  %arrayidx57 = getelementptr inbounds [100 x i32], ptr %47, i64 %idxprom56
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom58 = sext i32 %49 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %arrayidx57, i64 0, i64 %idxprom58
  %50 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %sub60 = sub nsw i32 %50, %46
  store i32 %sub60, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.inc61

for.inc61:                                        ; preds = %for.body55
  %51 = load i32, ptr %k, align 4, !tbaa !5
  %inc62 = add nsw i32 %51, 1
  store i32 %inc62, ptr %k, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !18

for.end63:                                        ; preds = %for.cond53
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %inc65 = add nsw i32 %52, 1
  store i32 %inc65, ptr %j, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !19

for.end66:                                        ; preds = %for.cond30
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %53, i64 1
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %arrayidx67, i64 0, i64 1
  %54 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %55 = load i32, ptr @t, align 4, !tbaa !5
  %add = add nsw i32 %55, %54
  store i32 %add, ptr @t, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc88, %for.end66
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %57 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %56, %57
  br i1 %cmp70, label %for.body71, label %for.end90

for.body71:                                       ; preds = %for.cond69
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc85, %for.body71
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %59 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub73 = sub nsw i32 %59, 1
  %cmp74 = icmp slt i32 %58, %sub73
  br i1 %cmp74, label %for.body75, label %for.end87

for.body75:                                       ; preds = %for.cond72
  %60 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [100 x i32], ptr %60, i64 %idxprom76
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %add78 = add nsw i32 %62, 1
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds [100 x i32], ptr %arrayidx77, i64 0, i64 %idxprom79
  %63 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %64 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %65 to i64
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %64, i64 %idxprom81
  %66 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom83 = sext i32 %66 to i64
  %arrayidx84 = getelementptr inbounds [100 x i32], ptr %arrayidx82, i64 0, i64 %idxprom83
  store i32 %63, ptr %arrayidx84, align 4, !tbaa !5
  br label %for.inc85

for.inc85:                                        ; preds = %for.body75
  %67 = load i32, ptr %j, align 4, !tbaa !5
  %inc86 = add nsw i32 %67, 1
  store i32 %inc86, ptr %j, align 4, !tbaa !5
  br label %for.cond72, !llvm.loop !20

for.end87:                                        ; preds = %for.cond72
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %inc89 = add nsw i32 %68, 1
  store i32 %inc89, ptr %i, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !21

for.end90:                                        ; preds = %for.cond69
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc111, %for.end90
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %70 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub92 = sub nsw i32 %70, 1
  %cmp93 = icmp slt i32 %69, %sub92
  br i1 %cmp93, label %for.body94, label %for.end113

for.body94:                                       ; preds = %for.cond91
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc108, %for.body94
  %71 = load i32, ptr %j, align 4, !tbaa !5
  %72 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub96 = sub nsw i32 %72, 1
  %cmp97 = icmp slt i32 %71, %sub96
  br i1 %cmp97, label %for.body98, label %for.end110

for.body98:                                       ; preds = %for.cond95
  %73 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %add99 = add nsw i32 %74, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds [100 x i32], ptr %73, i64 %idxprom100
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom102 = sext i32 %75 to i64
  %arrayidx103 = getelementptr inbounds [100 x i32], ptr %arrayidx101, i64 0, i64 %idxprom102
  %76 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %77 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom104 = sext i32 %78 to i64
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %77, i64 %idxprom104
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom106 = sext i32 %79 to i64
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %arrayidx105, i64 0, i64 %idxprom106
  store i32 %76, ptr %arrayidx107, align 4, !tbaa !5
  br label %for.inc108

for.inc108:                                       ; preds = %for.body98
  %80 = load i32, ptr %j, align 4, !tbaa !5
  %inc109 = add nsw i32 %80, 1
  store i32 %inc109, ptr %j, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !22

for.end110:                                       ; preds = %for.cond95
  br label %for.inc111

for.inc111:                                       ; preds = %for.end110
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %inc112 = add nsw i32 %81, 1
  store i32 %inc112, ptr %i, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !23

for.end113:                                       ; preds = %for.cond91
  %82 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub114 = sub nsw i32 %82, 1
  %83 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call noundef i32 @_Z3sumiPA100_i(i32 noundef %sub114, ptr noundef %83)
  %84 = load i32, ptr @t, align 4, !tbaa !5
  store i32 %84, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %return

return:                                           ; preds = %for.end113, %if.then
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !25

for.end12:                                        ; preds = %for.cond1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %call13 = call noundef i32 @_Z3sumiPA100_i(i32 noundef %10, ptr noundef @a)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr @t, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !26

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !30, !align !31
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !30, !align !31
  %vtable = load ptr, ptr %1, align 8, !tbaa !32
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !27, !nonnull !30, !align !31
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !36
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !37
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !53
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !53
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !53
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !53
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !36
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !54
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !36
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !36
  %vtable = load ptr, ptr %this1, align 8, !tbaa !32
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %4 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %this1, i8 noundef signext %3)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1
  ret i8 %5
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSo", !11, i64 0}
!29 = !{!11, !11, i64 0}
!30 = !{}
!31 = !{i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!36 = !{!7, !7, i64 0}
!37 = !{!38, !50, i64 240}
!38 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !39, i64 0, !28, i64 216, !7, i64 224, !48, i64 225, !49, i64 232, !50, i64 240, !51, i64 248, !52, i64 256}
!39 = !{!"_ZTSSt8ios_base", !40, i64 8, !40, i64 16, !41, i64 24, !42, i64 28, !42, i64 32, !43, i64 40, !44, i64 48, !7, i64 64, !6, i64 192, !45, i64 200, !46, i64 208}
!40 = !{!"long", !7, i64 0}
!41 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!42 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!43 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!44 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !40, i64 8}
!45 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!46 = !{!"_ZTSSt6locale", !47, i64 0}
!47 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!48 = !{!"bool", !7, i64 0}
!49 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!50 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!51 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!52 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!53 = !{!50, !50, i64 0}
!54 = !{!55, !7, i64 56}
!55 = !{!"_ZTSSt5ctypeIcE", !56, i64 0, !57, i64 16, !48, i64 24, !10, i64 32, !10, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!56 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!57 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!58 = !{!"p1 short", !11, i64 0}
