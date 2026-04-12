; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvkhgegmx.cpp"
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
  %m = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end29, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %1 = load i32, ptr %m, align 4
  %cmp = icmp ne i32 %1, -1
  %or.cond.not = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %or.cond.not, label %if.end, label %while.end32

if.end:                                           ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #4
  store i32 %1, ptr %a, align 16, !tbaa !21
  br label %while.cond2

while.cond2:                                      ; preds = %if.end12, %if.end
  %indvars.iv19 = phi i32 [ %indvars.iv.next20, %if.end12 ], [ 1, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end12 ], [ 0, %if.end ]
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %vtable4 = load ptr, ptr %call3, align 8, !tbaa !5
  %vbase.offset.ptr5 = getelementptr i8, ptr %vtable4, i64 -24
  %vbase.offset6 = load i64, ptr %vbase.offset.ptr5, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %call3, i64 %vbase.offset6
  %_M_streambuf_state.i.i.i11 = getelementptr inbounds nuw i8, ptr %add.ptr7, i64 32
  %2 = load i32, ptr %_M_streambuf_state.i.i.i11, align 8, !tbaa !8
  %and.i.i.i12 = and i32 %2, 5
  %cmp.i.not.i13 = icmp eq i32 %and.i.i.i12, 0
  %3 = load i32, ptr %m, align 4
  %cmp10 = icmp ne i32 %3, 0
  %or.cond1.not = select i1 %cmp.i.not.i13, i1 %cmp10, i1 false
  br i1 %or.cond1.not, label %if.end12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond2
  %wide.trip.count25 = zext i32 %indvars.iv19 to i64
  br label %for.cond

if.end12:                                         ; preds = %while.cond2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  store i32 %3, ptr %arrayidx13, align 4, !tbaa !21
  %indvars.iv.next20 = add nuw i32 %indvars.iv19, 1
  br label %while.cond2, !llvm.loop !22

for.cond:                                         ; preds = %for.cond.preheader, %for.inc27
  %indvars.iv21 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next22, %for.inc27 ]
  %count.0 = phi i32 [ 0, %for.cond.preheader ], [ %count.1, %for.inc27 ]
  %exitcond26 = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26, label %for.end29, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond
  %arrayidx19 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !21
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %indvars.iv16 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next17, %for.body17 ]
  %count.1 = phi i32 [ %count.0, %for.cond15.preheader ], [ %spec.select, %for.body17 ]
  %exitcond = icmp eq i64 %indvars.iv16, %wide.trip.count25
  br i1 %exitcond, label %for.inc27, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !21
  %mul = shl nsw i32 %5, 1
  %cmp22 = icmp eq i32 %4, %mul
  %inc24 = zext i1 %cmp22 to i32
  %spec.select = add nsw i32 %count.1, %inc24
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond15, !llvm.loop !25

for.inc27:                                        ; preds = %for.cond15
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond, !llvm.loop !26

for.end29:                                        ; preds = %for.cond
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0)
  %vtable.i = load ptr, ptr %call30, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call30, i64 %vbase.offset.i
  %call.i14 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call30, i8 noundef signext %call.i14)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #4
  br label %while.cond, !llvm.loop !27

while.end32:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!9, !13, i64 32}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!17, !17, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = distinct !{!26, !23, !24}
!27 = distinct !{!27, !23, !24}
