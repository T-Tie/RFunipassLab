; ModuleID = '<stdin>'
source_filename = "/tmp/tmph1lbjpz2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %p) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %q) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %m)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %b) #7
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv37, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %p)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %q)
  br label %for.cond13

for.cond13:                                       ; preds = %for.end26, %for.end10
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.end26 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %p, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv43, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.inc24
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc24 ], [ 0, %for.cond13 ]
  %6 = load i32, ptr %q, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp17 = icmp slt i64 %indvars.iv40, %7
  br i1 %cmp17, label %for.inc24, label %for.end26

for.inc24:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv43, i64 %indvars.iv40
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond16, !llvm.loop !12

for.end26:                                        ; preds = %for.cond16
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond13

for.cond30:                                       ; preds = %for.cond13, %for.end82
  %i.2 = phi i32 [ %inc9.i4, %for.end82 ], [ 0, %for.cond13 ]
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %i.2, %8
  br i1 %cmp31, label %for.cond33, label %for.end85

for.cond33:                                       ; preds = %for.cond30, %for.inc80
  %j.2 = phi i32 [ %inc81, %for.inc80 ], [ 0, %for.cond30 ]
  %9 = load i32, ptr %q, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %j.2, %9
  br i1 %cmp34, label %for.cond40.preheader, label %for.end82

for.cond40.preheader:                             ; preds = %for.cond33
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0)
  %10 = load i32, ptr %q, align 4, !tbaa !5
  %sub = add nsw i32 %10, -1
  %cmp63 = icmp eq i32 %j.2, %sub
  br i1 %cmp63, label %land.lhs.true, label %if.then76

land.lhs.true:                                    ; preds = %for.cond40.preheader
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %sub64 = add nsw i32 %11, -1
  %cmp65.not = icmp eq i32 %i.2, %sub64
  br i1 %cmp65.not, label %for.end82, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc80

if.then76:                                        ; preds = %for.cond40.preheader
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc80

for.inc80:                                        ; preds = %if.then, %if.then76
  %inc81 = add nuw nsw i32 %j.2, 1
  br label %for.cond33, !llvm.loop !13

for.end82:                                        ; preds = %land.lhs.true, %for.cond33
  %inc9.i4 = add nuw nsw i32 %i.2, 1
  br label %for.cond30

for.end85:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %q) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
