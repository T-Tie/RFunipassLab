; ModuleID = '<stdin>'
source_filename = "/tmp/tmplnjml7_z.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %ch = alloca [500 x i8], align 16
  %record = alloca [250 x ptr], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %ch) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %record) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %ch, i64 noundef 500)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -501
  %or.cond.i = icmp ult i64 %2, -500
  %or.cond58 = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond58, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i18.i = icmp eq i32 %call25.i, -1
  br i1 %cmp.i18.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !30

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ch) #7
  %sext = shl i64 %call3, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %ch, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %4 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then32, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %p.0.ph = phi ptr [ %add.ptr7, %if.then32 ], [ %ch, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %num.0.ph = phi i32 [ %r.0, %if.then32 ], [ 1, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %d.0.ph = phi i32 [ 1, %if.then32 ], [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ]
  %cmp35 = icmp sgt i32 %num.0.ph, 1
  br label %for.cond.outer70

for.cond.outer70:                                 ; preds = %for.cond.outer, %if.then36
  %p.0.ph71 = phi ptr [ %p.0.ph, %for.cond.outer ], [ %add.ptr7, %if.then36 ]
  %d.0.ph72 = phi i32 [ %d.0.ph, %for.cond.outer ], [ %inc39, %if.then36 ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer70, %if.else
  %p.0 = phi ptr [ %add.ptr7, %if.else ], [ %p.0.ph71, %for.cond.outer70 ]
  %cmp = icmp ult ptr %p.0, %add.ptr6
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond8

for.cond8:                                        ; preds = %for.end, %for.body
  %q.0 = phi ptr [ %add.ptr7, %for.body ], [ %incdec.ptr, %for.end ]
  %r.0 = phi i32 [ 1, %for.body ], [ %spec.select29, %for.end ]
  %cmp12 = icmp ult ptr %q.0, %add.ptr
  br i1 %cmp12, label %for.cond14, label %for.end30

for.cond14:                                       ; preds = %for.cond8, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ 0, %for.cond8 ]
  %k.0 = phi i32 [ %spec.select, %for.body16 ], [ 0, %for.cond8 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %add.ptr18 = getelementptr inbounds nuw i8, ptr %q.0, i64 %indvars.iv
  %5 = load i8, ptr %add.ptr18, align 1, !tbaa !31
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %p.0, i64 %indvars.iv
  %6 = load i8, ptr %add.ptr21, align 1, !tbaa !31
  %cmp23 = icmp eq i8 %5, %6
  %inc = zext i1 %cmp23 to i32
  %spec.select = add nuw nsw i32 %k.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !32

for.end:                                          ; preds = %for.cond14
  %cmp25 = icmp eq i32 %k.0, %4
  %inc27 = zext i1 %cmp25 to i32
  %spec.select29 = add nuw nsw i32 %r.0, %inc27
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 1
  br label %for.cond8, !llvm.loop !35

for.end30:                                        ; preds = %for.cond8
  %cmp31 = icmp sgt i32 %r.0, %num.0.ph
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.end30
  store ptr %p.0, ptr %record, align 16, !tbaa !36
  br label %for.cond.outer, !llvm.loop !38

if.else:                                          ; preds = %for.end30
  %cmp34 = icmp eq i32 %r.0, %num.0.ph
  %or.cond = and i1 %cmp35, %cmp34
  br i1 %or.cond, label %if.then36, label %for.cond, !llvm.loop !38

if.then36:                                        ; preds = %if.else
  %idxprom37 = zext nneg i32 %d.0.ph72 to i64
  %arrayidx38 = getelementptr inbounds nuw [250 x ptr], ptr %record, i64 0, i64 %idxprom37
  store ptr %p.0, ptr %arrayidx38, align 8, !tbaa !36
  %inc39 = add nuw nsw i32 %d.0.ph72, 1
  br label %for.cond.outer70, !llvm.loop !38

for.end44:                                        ; preds = %for.cond
  %cmp45 = icmp eq i32 %num.0.ph, 1
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %for.end44
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i38 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i40
  %call.i42 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i41, i8 noundef signext 10)
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i42)
  %call.i.i44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i43)
  br label %if.end70

if.else49:                                        ; preds = %for.end44
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0.ph)
  %vtable.i45 = load ptr, ptr %call50, align 8, !tbaa !5
  %vbase.offset.ptr.i46 = getelementptr i8, ptr %vtable.i45, i64 -24
  %vbase.offset.i47 = load i64, ptr %vbase.offset.ptr.i46, align 8
  %add.ptr.i48 = getelementptr inbounds i8, ptr %call50, i64 %vbase.offset.i47
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i48, i8 noundef signext 10)
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call50, i8 noundef signext %call.i)
  %call.i.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i49)
  %wide.trip.count68 = zext nneg i32 %d.0.ph72 to i64
  br label %for.cond52

for.cond52:                                       ; preds = %for.end65, %if.else49
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.end65 ], [ 0, %if.else49 ]
  %exitcond69.not = icmp eq i64 %indvars.iv63, %wide.trip.count68
  br i1 %exitcond69.not, label %if.end70, label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.cond52
  %arrayidx59 = getelementptr inbounds nuw [250 x ptr], ptr %record, i64 0, i64 %indvars.iv63
  br label %for.cond55

for.cond55:                                       ; preds = %for.cond55.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv60 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %7 = load i32, ptr %n, align 4, !tbaa !39
  %8 = sext i32 %7 to i64
  %cmp56 = icmp slt i64 %indvars.iv60, %8
  br i1 %cmp56, label %for.body57, label %for.end65

for.body57:                                       ; preds = %for.cond55
  %9 = load ptr, ptr %arrayidx59, align 8, !tbaa !36
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv60
  %10 = load i8, ptr %add.ptr61, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %10, ptr %__c.addr.i, align 1, !tbaa !31
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i33
  %11 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %11, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body57
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body57
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %10)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond55, !llvm.loop !40

for.end65:                                        ; preds = %for.cond55
  %vtable.i51 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %add.ptr.i54 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i53
  %call.i55 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i54, i8 noundef signext 10)
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i55)
  %call.i.i57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i56)
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond52, !llvm.loop !41

if.end70:                                         ; preds = %for.cond52, %if.then46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %record) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %ch) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !10, i64 16}
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
!21 = !{!9, !13, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !24, i64 216, !11, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !15, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{!11, !11, i64 0}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !33, !34}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 omnipotent char", !15, i64 0}
!38 = distinct !{!38, !33, !34}
!39 = !{!17, !17, i64 0}
!40 = distinct !{!40, !33, !34}
!41 = distinct !{!41, !33, !34}
