; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7cegnmb9.cpp"
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
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull align 16 %a) #5
  br label %while.cond

while.cond:                                       ; preds = %for.end45, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  %0 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %0, -1
  %or.cond.not = select i1 %call1, i1 %cmp, i1 false
  br i1 %or.cond.not, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !9, !invariant.load !8
  %cmp8 = icmp eq i32 %1, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp8, label %for.end, label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond, %for.body
  br label %for.cond11

for.cond11:                                       ; preds = %for.end34, %for.end
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.end34 ], [ 0, %for.end ]
  %num.0 = phi i32 [ %num.1, %for.end34 ], [ 0, %for.end ]
  %exitcond15.not = icmp eq i64 %indvars.iv12, 16
  br i1 %exitcond15.not, label %for.cond38.preheader, label %for.cond14.preheader

for.cond38.preheader:                             ; preds = %for.cond11
  br label %for.cond38

for.cond14.preheader:                             ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv12
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !9
  %cmp19.not = icmp eq i32 %2, 0
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %if.end31
  %indvars.iv8 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next9, %if.end31 ]
  %num.1 = phi i32 [ %num.0, %for.cond14.preheader ], [ %num.2, %if.end31 ]
  %exitcond11.not = icmp eq i64 %indvars.iv8, 16
  br i1 %exitcond11.not, label %for.end34, label %for.body16

for.body16:                                       ; preds = %for.cond14
  br i1 %cmp19.not, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body16
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv8
  %3 = load i32, ptr %arrayidx21, align 4, !tbaa !9, !invariant.load !8
  %cmp22 = icmp ne i32 %3, 0
  %mul = shl nsw i32 %3, 1
  %cmp28 = icmp eq i32 %2, %mul
  %or.cond6 = select i1 %cmp22, i1 %cmp28, i1 false
  %inc30 = zext i1 %or.cond6 to i32
  %spec.select = add nsw i32 %num.1, %inc30
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true, %for.body16
  %num.2 = phi i32 [ %num.1, %for.body16 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond14, !llvm.loop !15

for.end34:                                        ; preds = %for.cond14
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond11, !llvm.loop !16

for.cond38:                                       ; preds = %for.cond38.preheader, %for.body40
  %indvars.iv16 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next17, %for.body40 ]
  %exitcond19.not = icmp eq i64 %indvars.iv16, 16
  br i1 %exitcond19.not, label %for.end45, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv16
  store i32 0, ptr %arrayidx42, align 4, !tbaa !9
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond38, !llvm.loop !17

for.end45:                                        ; preds = %for.cond38
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0)
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call46, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
