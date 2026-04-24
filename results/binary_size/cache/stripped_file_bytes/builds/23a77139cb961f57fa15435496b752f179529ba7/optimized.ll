; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75c5u4q0.cpp"
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
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end36, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %1 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %1, -1
  %2 = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %2, label %while.cond3, label %while.end39

while.cond3:                                      ; preds = %while.cond, %while.body16
  %indvars.iv28 = phi i32 [ %indvars.iv.next29, %while.body16 ], [ 0, %while.cond ]
  %indvars.iv23 = phi i32 [ %indvars.iv.next24, %while.body16 ], [ 1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body16 ], [ 1, %while.cond ]
  %arrayidx4 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !5
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %_M_streambuf_state.i.i.i13 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i13, align 8, !tbaa !8
  %and.i.i.i14 = and i32 %3, 5
  %cmp.i.not.i15 = icmp eq i32 %and.i.i.i14, 0
  br i1 %cmp.i.not.i15, label %land.rhs11, label %while.end

land.rhs11:                                       ; preds = %while.cond3
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !21
  %cmp14.not = icmp eq i32 %4, 0
  br i1 %cmp14.not, label %while.end, label %while.body16

while.body16:                                     ; preds = %land.rhs11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next24 = add nuw i32 %indvars.iv23, 1
  %indvars.iv.next29 = add nuw nsw i32 %indvars.iv28, 1
  br label %while.cond3, !llvm.loop !22

while.end:                                        ; preds = %while.cond3, %land.rhs11
  %wide.trip.count30 = zext nneg i32 %indvars.iv28 to i64
  %wide.trip.count = zext i32 %indvars.iv23 to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond18
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !25

for.cond:                                         ; preds = %for.cond.loopexit, %while.end
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.cond.loopexit ], [ 0, %while.end ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.cond.loopexit ], [ 1, %while.end ]
  %n.0 = phi i32 [ %n.1, %for.cond.loopexit ], [ 0, %while.end ]
  %exitcond31.not = icmp eq i64 %indvars.iv25, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end36, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx22 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv25
  br label %for.cond18

for.cond18:                                       ; preds = %for.body20, %for.body
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body20 ], [ %indvars.iv18, %for.body ]
  %n.1 = phi i32 [ %n.2, %for.body20 ], [ %n.0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !21
  %arrayidx24 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv20
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !21
  %mul = shl nsw i32 %6, 1
  %cmp25 = icmp eq i32 %5, %mul
  %mul30 = shl nsw i32 %5, 1
  %cmp31 = icmp eq i32 %6, %mul30
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp31
  %inc32 = zext i1 %or.cond to i32
  %n.2 = add nsw i32 %n.1, %inc32
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond18, !llvm.loop !26

for.end36:                                        ; preds = %for.cond
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.0)
  %vtable.i = load ptr, ptr %call37, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call37, i64 %vbase.offset.i
  %call.i16 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call37, i8 noundef signext %call.i16)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond, !llvm.loop !27

while.end39:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #4
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
