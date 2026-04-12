; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9r83vc4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [10000 x i8], align 16
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  %s = alloca i32, align 4
  %b = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef align 16 %str) #4
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %str, i8 noundef 0, i64 noundef 10000, i1 noundef false) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #4
  store i32 0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400000, ptr noundef align 16 %b) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @getchar()
  %conv = trunc i32 %call to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !9
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %m, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom3 = sext i32 %1 to i64
  %arrayidx4 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom3
  %3 = load i8, ptr %arrayidx4, align 1, !tbaa !9
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp eq i32 %conv5, 32
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %sub = sub nsw i32 %1, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom7
  %4 = load i8, ptr %arrayidx8, align 1, !tbaa !9
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 32
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 %1, ptr %arrayidx12, align 4, !tbaa !5
  %inc13 = add nsw i32 %5, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc14 = add nsw i32 %1, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc35, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %6, %2
  br i1 %cmp16, label %for.body17, label %for.end37

for.body17:                                       ; preds = %for.cond15
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.body17
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %7, %8
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom21
  %9 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp ne i32 %6, %9
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body20
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %if.end25

if.else:                                          ; preds = %for.body20
  store i32 1, ptr %s, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %10 = load i32, ptr %sum, align 4, !tbaa !5
  %11 = load i32, ptr %s, align 4, !tbaa !5
  %add = add nsw i32 %10, %11
  store i32 %add, ptr %sum, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %inc27 = add nsw i32 %7, 1
  store i32 %inc27, ptr %k, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !14

for.end28:                                        ; preds = %for.cond18
  %12 = load i32, ptr %sum, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %12, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %for.end28
  %idxprom31 = sext i32 %6 to i64
  %arrayidx32 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %idxprom31
  %13 = load i8, ptr %arrayidx32, align 1, !tbaa !9
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %for.end28
  br label %for.inc35

for.inc35:                                        ; preds = %if.end34
  %inc36 = add nsw i32 %6, 1
  store i32 %inc36, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !15

for.end37:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 400000, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #6
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %str) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree }
attributes #6 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
