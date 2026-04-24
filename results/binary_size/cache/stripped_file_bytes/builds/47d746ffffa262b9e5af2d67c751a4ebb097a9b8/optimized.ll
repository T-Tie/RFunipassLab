; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqsv6yj09.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i39 = alloca i8, align 1
  %__c.addr.i26 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %word = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %word) #4
  br label %while.cond.outer

while.cond.loopexit75:                            ; preds = %for.cond51, %for.body53
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.loopexit75, %entry
  %p.0.ph = phi i32 [ %p.1, %while.cond.loopexit75 ], [ 0, %entry ]
  %k.0.ph = phi i32 [ %k.2, %while.cond.loopexit75 ], [ 0, %entry ]
  %flag.0.ph = phi i32 [ %flag.1, %while.cond.loopexit75 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %for.cond17, %while.cond.outer
  %p.0 = phi i32 [ %p.0.ph, %while.cond.outer ], [ %p.1, %for.cond17 ]
  %flag.0 = phi i32 [ %flag.0.ph, %while.cond.outer ], [ %flag.1, %for.cond17 ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %word, i64 noundef 100)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i, label %for.cond, label %while.end

for.cond:                                         ; preds = %while.cond, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.cond ]
  %p.1 = phi i32 [ %2, %for.body ], [ %p.0, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !21
  %cmp2.not = icmp eq i8 %1, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp2.not, label %for.end, label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.body, %for.cond
  %3 = add i32 %p.1, 1
  %wide.trip.count = zext i32 %3 to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.end
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body5 ], [ 0, %for.end ]
  %flag.1 = phi i32 [ %spec.select, %for.body5 ], [ %flag.0, %for.end ]
  %exitcond61 = icmp eq i64 %indvars.iv57, %wide.trip.count
  br i1 %exitcond61, label %for.end14, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv57
  %4 = load i8, ptr %arrayidx7, align 1, !tbaa !21
  %cmp9 = icmp eq i8 %4, 32
  %spec.select = select i1 %cmp9, i32 1, i32 %flag.1
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond3, !llvm.loop !25

for.end14:                                        ; preds = %for.cond3
  %cmp15 = icmp eq i32 %flag.1, 0
  br i1 %cmp15, label %for.cond17.preheader, label %for.cond27

for.cond17.preheader:                             ; preds = %for.end14
  %5 = zext i32 %p.1 to i64
  %6 = add nuw nsw i64 %5, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv69 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next70, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %exitcond72 = icmp eq i64 %indvars.iv69, %6
  br i1 %exitcond72, label %while.cond, label %for.body19, !llvm.loop !26

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv69
  %7 = load i8, ptr %arrayidx21, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %7, ptr %__c.addr.i, align 1, !tbaa !21
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep54 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %8 = load i64, ptr %gep54, align 8, !tbaa !27
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body19
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body19
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond17, !llvm.loop !28

for.cond27:                                       ; preds = %for.end14, %for.inc49
  %i.3 = phi i32 [ %dec, %for.inc49 ], [ %p.1, %for.end14 ]
  %k.2 = phi i32 [ %k.3, %for.inc49 ], [ %k.0.ph, %for.end14 ]
  %9 = zext i32 %i.3 to i64
  %cmp28 = icmp sgt i32 %i.3, -1
  br i1 %cmp28, label %for.body29, label %for.cond51

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %9
  %10 = load i8, ptr %arrayidx31, align 1, !tbaa !21
  %cmp33.not = icmp eq i8 %10, 32
  br i1 %cmp33.not, label %for.cond37.preheader, label %if.then34

for.cond37.preheader:                             ; preds = %for.body29
  %add38 = add nsw i32 %k.2, %i.3
  br label %for.cond37

if.then34:                                        ; preds = %for.body29
  %inc35 = add nsw i32 %k.2, 1
  br label %for.inc49

for.cond37:                                       ; preds = %for.cond37.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38
  %indvars.iv62 = phi i64 [ %9, %for.cond37.preheader ], [ %indvars.iv.next63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38 ]
  %11 = trunc nuw i64 %indvars.iv62 to i32
  %cmp39.not.not = icmp sgt i32 %add38, %11
  br i1 %cmp39.not.not, label %for.body40, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond37
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc49

for.body40:                                       ; preds = %for.cond37
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %arrayidx42 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv.next63
  %12 = load i8, ptr %arrayidx42, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i26)
  store i8 %12, ptr %__c.addr.i26, align 1, !tbaa !21
  %vtable.i27 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i28 = getelementptr i8, ptr %vtable.i27, i64 -24
  %vbase.offset.i29 = load i64, ptr %vbase.offset.ptr.i28, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i29
  %13 = load i64, ptr %gep, align 8, !tbaa !27
  %cmp.not.i32 = icmp eq i64 %13, 0
  br i1 %cmp.not.i32, label %if.end.i36, label %if.then.i33

if.then.i33:                                      ; preds = %for.body40
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i26, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38

if.end.i36:                                       ; preds = %for.body40
  %call2.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %12)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit38: ; preds = %if.then.i33, %if.end.i36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i26)
  br label %for.cond37, !llvm.loop !29

for.inc49:                                        ; preds = %if.then34, %for.cond.cleanup
  %k.3 = phi i32 [ %inc35, %if.then34 ], [ 0, %for.cond.cleanup ]
  %dec = add nsw i32 %i.3, -1
  br label %for.cond27, !llvm.loop !30

for.cond51:                                       ; preds = %for.cond27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51 ], [ 0, %for.cond27 ]
  %exitcond68.not = icmp eq i64 %indvars.iv65, 100
  br i1 %exitcond68.not, label %while.cond.loopexit75, label %for.body53, !llvm.loop !26

for.body53:                                       ; preds = %for.cond51
  %arrayidx55 = getelementptr inbounds nuw [100 x i8], ptr %word, i64 0, i64 %indvars.iv65
  %14 = load i8, ptr %arrayidx55, align 1, !tbaa !21
  %cmp57.not = icmp eq i8 %14, 32
  br i1 %cmp57.not, label %while.cond.loopexit75, label %if.then58, !llvm.loop !26

if.then58:                                        ; preds = %for.body53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i39)
  store i8 %14, ptr %__c.addr.i39, align 1, !tbaa !21
  %vtable.i40 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i41 = getelementptr i8, ptr %vtable.i40, i64 -24
  %vbase.offset.i42 = load i64, ptr %vbase.offset.ptr.i41, align 8
  %gep53 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i42
  %15 = load i64, ptr %gep53, align 8, !tbaa !27
  %cmp.not.i45 = icmp eq i64 %15, 0
  br i1 %cmp.not.i45, label %if.end.i49, label %if.then.i46

if.then.i46:                                      ; preds = %if.then58
  %call1.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i39, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51

if.end.i49:                                       ; preds = %if.then58
  %call2.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit51: ; preds = %if.then.i46, %if.end.i49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i39)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond51, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %word) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = distinct !{!26, !23, !24}
!27 = !{!9, !10, i64 16}
!28 = distinct !{!28, !23, !24}
!29 = distinct !{!29, !23, !24}
!30 = distinct !{!30, !23, !24}
!31 = distinct !{!31, !23, !24}
